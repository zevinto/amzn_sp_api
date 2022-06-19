=begin
#Selling Partner API for Shipping

#Provides programmatic access to Amazon Shipping APIs.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

# Common files
require 'shipping_api_model/api_client'
require 'shipping_api_model/api_error'
require 'shipping_api_model/version'
require 'shipping_api_model/configuration'

# Models
require 'shipping_api_model/models/accepted_rate'
require 'shipping_api_model/models/account'
require 'shipping_api_model/models/account_id'
require 'shipping_api_model/models/address'
require 'shipping_api_model/models/cancel_shipment_response'
require 'shipping_api_model/models/city'
require 'shipping_api_model/models/client_reference_id'
require 'shipping_api_model/models/container'
require 'shipping_api_model/models/container_item'
require 'shipping_api_model/models/container_list'
require 'shipping_api_model/models/container_reference_id'
require 'shipping_api_model/models/container_specification'
require 'shipping_api_model/models/container_specification_list'
require 'shipping_api_model/models/country_code'
require 'shipping_api_model/models/create_shipment_request'
require 'shipping_api_model/models/create_shipment_response'
require 'shipping_api_model/models/create_shipment_result'
require 'shipping_api_model/models/currency'
require 'shipping_api_model/models/dimensions'
require 'shipping_api_model/models/error'
require 'shipping_api_model/models/error_list'
require 'shipping_api_model/models/event'
require 'shipping_api_model/models/event_code'
require 'shipping_api_model/models/event_list'
require 'shipping_api_model/models/get_account_response'
require 'shipping_api_model/models/get_rates_request'
require 'shipping_api_model/models/get_rates_response'
require 'shipping_api_model/models/get_rates_result'
require 'shipping_api_model/models/get_shipment_response'
require 'shipping_api_model/models/get_tracking_information_response'
require 'shipping_api_model/models/label'
require 'shipping_api_model/models/label_result'
require 'shipping_api_model/models/label_result_list'
require 'shipping_api_model/models/label_specification'
require 'shipping_api_model/models/label_stream'
require 'shipping_api_model/models/location'
require 'shipping_api_model/models/party'
require 'shipping_api_model/models/postal_code'
require 'shipping_api_model/models/promised_delivery_date'
require 'shipping_api_model/models/purchase_labels_request'
require 'shipping_api_model/models/purchase_labels_response'
require 'shipping_api_model/models/purchase_labels_result'
require 'shipping_api_model/models/purchase_shipment_request'
require 'shipping_api_model/models/purchase_shipment_response'
require 'shipping_api_model/models/purchase_shipment_result'
require 'shipping_api_model/models/rate'
require 'shipping_api_model/models/rate_id'
require 'shipping_api_model/models/rate_list'
require 'shipping_api_model/models/retrieve_shipping_label_request'
require 'shipping_api_model/models/retrieve_shipping_label_response'
require 'shipping_api_model/models/retrieve_shipping_label_result'
require 'shipping_api_model/models/service_rate'
require 'shipping_api_model/models/service_rate_list'
require 'shipping_api_model/models/service_type'
require 'shipping_api_model/models/service_type_list'
require 'shipping_api_model/models/shipment'
require 'shipping_api_model/models/shipment_id'
require 'shipping_api_model/models/shipping_promise_set'
require 'shipping_api_model/models/state_or_region'
require 'shipping_api_model/models/time_range'
require 'shipping_api_model/models/tracking_id'
require 'shipping_api_model/models/tracking_information'
require 'shipping_api_model/models/tracking_summary'
require 'shipping_api_model/models/weight'

# APIs
require 'shipping_api_model/api/shipping_api'

module AmznSpApi::ShippingApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmznSpApi::ShippingApiModel.configure do |config|
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
