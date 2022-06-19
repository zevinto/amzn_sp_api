=begin
#Selling Partner APIs for Fulfillment Outbound

#The Selling Partner API for Fulfillment Outbound lets you create applications that help a seller fulfill Multi-Channel Fulfillment orders using their inventory in Amazon's fulfillment network. You can get information on both potential and existing fulfillment orders.

OpenAPI spec version: 2020-07-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

# Common files
require 'fulfillment_outbound_api_model/api_client'
require 'fulfillment_outbound_api_model/api_error'
require 'fulfillment_outbound_api_model/version'
require 'fulfillment_outbound_api_model/configuration'

# Models
require 'fulfillment_outbound_api_model/models/additional_location_info'
require 'fulfillment_outbound_api_model/models/address'
require 'fulfillment_outbound_api_model/models/cod_settings'
require 'fulfillment_outbound_api_model/models/cancel_fulfillment_order_response'
require 'fulfillment_outbound_api_model/models/create_fulfillment_order_item'
require 'fulfillment_outbound_api_model/models/create_fulfillment_order_item_list'
require 'fulfillment_outbound_api_model/models/create_fulfillment_order_request'
require 'fulfillment_outbound_api_model/models/create_fulfillment_order_response'
require 'fulfillment_outbound_api_model/models/create_fulfillment_return_request'
require 'fulfillment_outbound_api_model/models/create_fulfillment_return_response'
require 'fulfillment_outbound_api_model/models/create_fulfillment_return_result'
require 'fulfillment_outbound_api_model/models/create_return_item'
require 'fulfillment_outbound_api_model/models/create_return_item_list'
require 'fulfillment_outbound_api_model/models/current_status'
require 'fulfillment_outbound_api_model/models/decimal'
require 'fulfillment_outbound_api_model/models/delivery_window'
require 'fulfillment_outbound_api_model/models/delivery_window_list'
require 'fulfillment_outbound_api_model/models/error'
require 'fulfillment_outbound_api_model/models/error_list'
require 'fulfillment_outbound_api_model/models/event_code'
require 'fulfillment_outbound_api_model/models/feature'
require 'fulfillment_outbound_api_model/models/feature_settings'
require 'fulfillment_outbound_api_model/models/feature_sku'
require 'fulfillment_outbound_api_model/models/features'
require 'fulfillment_outbound_api_model/models/fee'
require 'fulfillment_outbound_api_model/models/fee_list'
require 'fulfillment_outbound_api_model/models/fulfillment_action'
require 'fulfillment_outbound_api_model/models/fulfillment_order'
require 'fulfillment_outbound_api_model/models/fulfillment_order_item'
require 'fulfillment_outbound_api_model/models/fulfillment_order_item_list'
require 'fulfillment_outbound_api_model/models/fulfillment_order_status'
require 'fulfillment_outbound_api_model/models/fulfillment_policy'
require 'fulfillment_outbound_api_model/models/fulfillment_preview'
require 'fulfillment_outbound_api_model/models/fulfillment_preview_item'
require 'fulfillment_outbound_api_model/models/fulfillment_preview_item_list'
require 'fulfillment_outbound_api_model/models/fulfillment_preview_list'
require 'fulfillment_outbound_api_model/models/fulfillment_preview_shipment'
require 'fulfillment_outbound_api_model/models/fulfillment_preview_shipment_list'
require 'fulfillment_outbound_api_model/models/fulfillment_return_item_status'
require 'fulfillment_outbound_api_model/models/fulfillment_shipment'
require 'fulfillment_outbound_api_model/models/fulfillment_shipment_item'
require 'fulfillment_outbound_api_model/models/fulfillment_shipment_item_list'
require 'fulfillment_outbound_api_model/models/fulfillment_shipment_list'
require 'fulfillment_outbound_api_model/models/fulfillment_shipment_package'
require 'fulfillment_outbound_api_model/models/fulfillment_shipment_package_list'
require 'fulfillment_outbound_api_model/models/get_feature_inventory_response'
require 'fulfillment_outbound_api_model/models/get_feature_inventory_result'
require 'fulfillment_outbound_api_model/models/get_feature_sku_response'
require 'fulfillment_outbound_api_model/models/get_feature_sku_result'
require 'fulfillment_outbound_api_model/models/get_features_response'
require 'fulfillment_outbound_api_model/models/get_features_result'
require 'fulfillment_outbound_api_model/models/get_fulfillment_order_response'
require 'fulfillment_outbound_api_model/models/get_fulfillment_order_result'
require 'fulfillment_outbound_api_model/models/get_fulfillment_preview_item'
require 'fulfillment_outbound_api_model/models/get_fulfillment_preview_item_list'
require 'fulfillment_outbound_api_model/models/get_fulfillment_preview_request'
require 'fulfillment_outbound_api_model/models/get_fulfillment_preview_response'
require 'fulfillment_outbound_api_model/models/get_fulfillment_preview_result'
require 'fulfillment_outbound_api_model/models/get_package_tracking_details_response'
require 'fulfillment_outbound_api_model/models/invalid_item_reason'
require 'fulfillment_outbound_api_model/models/invalid_item_reason_code'
require 'fulfillment_outbound_api_model/models/invalid_return_item'
require 'fulfillment_outbound_api_model/models/invalid_return_item_list'
require 'fulfillment_outbound_api_model/models/list_all_fulfillment_orders_response'
require 'fulfillment_outbound_api_model/models/list_all_fulfillment_orders_result'
require 'fulfillment_outbound_api_model/models/list_return_reason_codes_response'
require 'fulfillment_outbound_api_model/models/list_return_reason_codes_result'
require 'fulfillment_outbound_api_model/models/money'
require 'fulfillment_outbound_api_model/models/notification_email_list'
require 'fulfillment_outbound_api_model/models/package_tracking_details'
require 'fulfillment_outbound_api_model/models/quantity'
require 'fulfillment_outbound_api_model/models/reason_code_details'
require 'fulfillment_outbound_api_model/models/reason_code_details_list'
require 'fulfillment_outbound_api_model/models/return_authorization'
require 'fulfillment_outbound_api_model/models/return_authorization_list'
require 'fulfillment_outbound_api_model/models/return_item'
require 'fulfillment_outbound_api_model/models/return_item_disposition'
require 'fulfillment_outbound_api_model/models/return_item_list'
require 'fulfillment_outbound_api_model/models/scheduled_delivery_info'
require 'fulfillment_outbound_api_model/models/shipping_speed_category'
require 'fulfillment_outbound_api_model/models/shipping_speed_category_list'
require 'fulfillment_outbound_api_model/models/string_list'
require 'fulfillment_outbound_api_model/models/timestamp'
require 'fulfillment_outbound_api_model/models/tracking_address'
require 'fulfillment_outbound_api_model/models/tracking_event'
require 'fulfillment_outbound_api_model/models/tracking_event_list'
require 'fulfillment_outbound_api_model/models/unfulfillable_preview_item'
require 'fulfillment_outbound_api_model/models/unfulfillable_preview_item_list'
require 'fulfillment_outbound_api_model/models/update_fulfillment_order_item'
require 'fulfillment_outbound_api_model/models/update_fulfillment_order_item_list'
require 'fulfillment_outbound_api_model/models/update_fulfillment_order_request'
require 'fulfillment_outbound_api_model/models/update_fulfillment_order_response'
require 'fulfillment_outbound_api_model/models/weight'

# APIs
require 'fulfillment_outbound_api_model/api/fba_outbound_api'

module AmznSpApi::FulfillmentOutboundApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmznSpApi::FulfillmentOutboundApiModel.configure do |config|
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
