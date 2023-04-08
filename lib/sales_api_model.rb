# #Selling Partner API for Sales
#
# The Selling Partner API for Sales provides APIs related to sales performance.
#
# OpenAPI spec version: v1
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 3.0.36

# Common files
require 'sales_api_model/api_client'
require 'sales_api_model/api_error'
require 'sales_api_model/version'
require 'sales_api_model/configuration'

# Models
require 'sales_api_model/models/decimal'
require 'sales_api_model/models/error'
require 'sales_api_model/models/error_list'
require 'sales_api_model/models/get_order_metrics_response'
require 'sales_api_model/models/money'
require 'sales_api_model/models/order_metrics_interval'
require 'sales_api_model/models/order_metrics_list'

# APIs
require 'sales_api_model/api/sales_api'

module AmznSpApi::SalesApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmznSpApi::SalesApiModel.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
