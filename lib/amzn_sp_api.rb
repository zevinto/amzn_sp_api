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

    def encrypt_feed(feed_content, document_response_payload)
      cipher = document_cipher(document_response_payload, encrypt: true)
      cipher.update(feed_content) + cipher.final
    end

    def decrypt_and_inflate_document(ciphertext, document_response_payload)
      body = if cipher = document_cipher(document_response_payload, encrypt: false)
               cipher.update(ciphertext) + cipher.final
             else
               ciphertext
             end

      inflate_document(body, document_response_payload)
    end

    alias decrypt_and_inflate_feed decrypt_and_inflate_document
    def inflate_document(body, document_response_payload)
      compression = document_response_payload[:compressionAlgorithm]
      return body unless compression
      raise AmznSpApi::ApiError, "unknown compressionAlgorithm #{compression}" if compression != 'GZIP'

      Zlib.gunzip(body)
    end

    # From https://github.com/amzn/selling-partner-api-models/blob/main/clients/sellingpartner-api-documents-helper-java/src/main/java/com/amazon/spapi/documents/impl/AESCryptoStreamFactory.java
    def document_cipher(response, encrypt:)
      if key = response.dig(:encryptionDetails, :key)
        key = Base64.decode64(key)
        cipher = case response.dig(:encryptionDetails, :standard)
                 when 'AES'
                   OpenSSL::Cipher.new("AES-#{key.size * 8}-CBC")
                 else
                   raise AmznSpApi::ApiError, "unknown encryption standard #{response.inspect}"
                 end

        encrypt ? cipher.encrypt : cipher.decrypt
        cipher.key = key
        cipher.iv = Base64.decode64(response.dig(:encryptionDetails, :initializationVector))
        cipher
      end
    end
  end
end
