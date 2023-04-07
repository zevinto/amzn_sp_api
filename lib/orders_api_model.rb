=begin
#Selling Partner API for Orders

#The Selling Partner API for Orders helps you programmatically retrieve order information. These APIs let you develop fast, flexible, custom applications in areas like order synchronization, order research, and demand-based decision support tools.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.36
=end

# Common files
require 'orders_api_model/api_client'
require 'orders_api_model/api_error'
require 'orders_api_model/version'
require 'orders_api_model/configuration'

# Models
require 'orders_api_model/models/address'
require 'orders_api_model/models/approval_support_data_element'
require 'orders_api_model/models/approval_support_data_element_list'
require 'orders_api_model/models/automated_shipping_settings'
require 'orders_api_model/models/business_hours'
require 'orders_api_model/models/buyer_customized_info_detail'
require 'orders_api_model/models/buyer_info'
require 'orders_api_model/models/buyer_requested_cancel'
require 'orders_api_model/models/buyer_tax_info'
require 'orders_api_model/models/buyer_tax_information'
require 'orders_api_model/models/confirm_shipment_error_response'
require 'orders_api_model/models/confirm_shipment_order_item'
require 'orders_api_model/models/confirm_shipment_order_items_list'
require 'orders_api_model/models/confirm_shipment_request'
require 'orders_api_model/models/delivery_preferences'
require 'orders_api_model/models/easy_ship_shipment_status'
require 'orders_api_model/models/electronic_invoice_status'
require 'orders_api_model/models/error'
require 'orders_api_model/models/error_list'
require 'orders_api_model/models/exception_dates'
require 'orders_api_model/models/fulfillment_instruction'
require 'orders_api_model/models/get_order_address_response'
require 'orders_api_model/models/get_order_approvals_response'
require 'orders_api_model/models/get_order_buyer_info_response'
require 'orders_api_model/models/get_order_items_buyer_info_response'
require 'orders_api_model/models/get_order_items_response'
require 'orders_api_model/models/get_order_regulated_info_response'
require 'orders_api_model/models/get_order_response'
require 'orders_api_model/models/get_orders_response'
require 'orders_api_model/models/item_approval'
require 'orders_api_model/models/item_approval_action'
require 'orders_api_model/models/item_approval_action_changes'
require 'orders_api_model/models/item_approval_context'
require 'orders_api_model/models/item_approval_status'
require 'orders_api_model/models/item_approval_type'
require 'orders_api_model/models/item_buyer_info'
require 'orders_api_model/models/item_identifier'
require 'orders_api_model/models/marketplace_id'
require 'orders_api_model/models/marketplace_tax_info'
require 'orders_api_model/models/money'
require 'orders_api_model/models/open_interval'
require 'orders_api_model/models/open_time_interval'
require 'orders_api_model/models/order'
require 'orders_api_model/models/order_address'
require 'orders_api_model/models/order_approvals_response'
require 'orders_api_model/models/order_buyer_info'
require 'orders_api_model/models/order_item'
require 'orders_api_model/models/order_item_approval_request'
require 'orders_api_model/models/order_item_approvals'
require 'orders_api_model/models/order_item_buyer_info'
require 'orders_api_model/models/order_item_buyer_info_list'
require 'orders_api_model/models/order_item_list'
require 'orders_api_model/models/order_items'
require 'orders_api_model/models/order_items_buyer_info_list'
require 'orders_api_model/models/order_items_inner'
require 'orders_api_model/models/order_items_list'
require 'orders_api_model/models/order_list'
require 'orders_api_model/models/order_regulated_info'
require 'orders_api_model/models/orders_list'
require 'orders_api_model/models/other_delivery_attributes'
require 'orders_api_model/models/package_detail'
require 'orders_api_model/models/package_reference_id'
require 'orders_api_model/models/payment_execution_detail_item'
require 'orders_api_model/models/payment_execution_detail_item_list'
require 'orders_api_model/models/payment_method_detail_item_list'
require 'orders_api_model/models/points_granted_detail'
require 'orders_api_model/models/preferred_delivery_time'
require 'orders_api_model/models/product_info_detail'
require 'orders_api_model/models/promotion_id_list'
require 'orders_api_model/models/regulated_information'
require 'orders_api_model/models/regulated_information_field'
require 'orders_api_model/models/regulated_order_verification_status'
require 'orders_api_model/models/rejection_reason'
require 'orders_api_model/models/shipment_status'
require 'orders_api_model/models/tax_classification'
require 'orders_api_model/models/tax_collection'
require 'orders_api_model/models/transparency_code'
require 'orders_api_model/models/transparency_code_list'
require 'orders_api_model/models/update_items_approvals_error_response'
require 'orders_api_model/models/update_order_approvals_request'
require 'orders_api_model/models/update_shipment_status_error_response'
require 'orders_api_model/models/update_shipment_status_request'
require 'orders_api_model/models/update_verification_status_error_response'
require 'orders_api_model/models/update_verification_status_request'
require 'orders_api_model/models/update_verification_status_request_body'
require 'orders_api_model/models/verification_status'

# APIs
require 'orders_api_model/api/approvals_api'
require 'orders_api_model/api/orders_v0_api'
require 'orders_api_model/api/shipment_api'

module AmznSpApi::OrdersApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmznSpApi::OrdersApiModel.configure do |config|
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
