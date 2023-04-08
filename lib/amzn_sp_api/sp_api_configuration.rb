require 'amzn_sp_api/configuration'

module AmznSpApi
  class SpApiConfiguration < Configuration
    # The LWA refresh token.
    attr_accessor :refresh_token

    # The LWA client identifier.
    attr_accessor :client_id

    # The LWA client secret.
    attr_accessor :client_secret

    # The Selling Partner API provides two sandbox environments: static and dynamic
    attr_accessor :sandbox

    # The AWS region to which you are directing your call.
    attr_accessor :region

    # The AWS access key Id
    attr_accessor :aws_access_key_id

    # The AWS secret access key,
    attr_accessor :aws_secret_access_key

    # Either access key or credentials_provider for AWS Signer, e.g. Aws::STS::Client
    attr_accessor :credentials_provider

    # Optional lambdas for storing and retrieving token
    attr_accessor :save_access_token

    attr_accessor :get_access_token

    # from https://developer-docs.amazon.com/sp-api/docs/sp-api-endpoints
    AWS_REGION_MAP = {
      'na' => 'us-east-1',
      'eu' => 'en_west-1',
      'fe' => 'us-west-2'
    }.freeze

    def aws_region
      AWS_REGION_MAP[region]
    end

    def region=(region)
      @region = region
      raise ApiError, "#{region} is not supported or does not exist. Region must be one of the following: #{AWS_REGION_MAP.keys.join(', ')}" unless aws_region

      self.host = "#{sandbox ? 'sandbox.' : ''}sellingpartnerapi-#{region}.amazon.com"
      self.base_path = '/'
    end

    def sandbox=(sandbox)
      @sandbox = sandbox
      self.region = @region
    end

    def access_token_key
      Digest::MD5.hexdigest("#{client_id} #{refresh_token}")
    end

    def self.default
      @@default ||= SpApiConfiguration.new
    end
  end
end
