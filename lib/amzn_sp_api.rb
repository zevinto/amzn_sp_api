require_relative 'amzn_sp_api/amzn_sp_api_version'
require 'amzn_sp_api/api_error'
require 'amzn_sp_api/sp_api_client'
require 'amzn_sp_api/sp_api_configuration'

module AmznSpApi
  class << self
    # Customize default settings for the SDK using block.
    #   AmznSpApi.configure do |config|
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(SpApiConfiguration.default)
      else
        SpApiConfiguration.default
      end
    end

    def inflate_document(body, document_response)
      compression = document_response.compression_algorithm
      return body unless compression
      raise AmzSpApi::ApiError, "unknown compressionAlgorithm #{compression}" if compression != 'GZIP'

      Zlib.gunzip(body)
    end
  end
end
