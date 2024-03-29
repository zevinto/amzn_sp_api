# #Selling Partner API for Messaging
#
# With the Messaging API you can build applications that send messages to buyers. You can get a list of message types that are available for an order that you specify, then call an operation that sends a message to the buyer for that order. The Messaging API returns responses that are formed according to the <a href=https://tools.ietf.org/html/draft-kelly-json-hal-08>JSON Hypertext Application Language</a> (HAL) standard.
#
# OpenAPI spec version: v1
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 3.0.36

# Common files
require 'messaging_api_model/api_client'
require 'messaging_api_model/api_error'
require 'messaging_api_model/version'
require 'messaging_api_model/configuration'

# Models
require 'messaging_api_model/models/attachment'
require 'messaging_api_model/models/create_amazon_motors_request'
require 'messaging_api_model/models/create_amazon_motors_response'
require 'messaging_api_model/models/create_confirm_customization_details_request'
require 'messaging_api_model/models/create_confirm_customization_details_response'
require 'messaging_api_model/models/create_confirm_delivery_details_request'
require 'messaging_api_model/models/create_confirm_delivery_details_response'
require 'messaging_api_model/models/create_confirm_order_details_request'
require 'messaging_api_model/models/create_confirm_order_details_response'
require 'messaging_api_model/models/create_confirm_service_details_request'
require 'messaging_api_model/models/create_confirm_service_details_response'
require 'messaging_api_model/models/create_digital_access_key_request'
require 'messaging_api_model/models/create_digital_access_key_response'
require 'messaging_api_model/models/create_legal_disclosure_request'
require 'messaging_api_model/models/create_legal_disclosure_response'
require 'messaging_api_model/models/create_negative_feedback_removal_response'
require 'messaging_api_model/models/create_unexpected_problem_request'
require 'messaging_api_model/models/create_unexpected_problem_response'
require 'messaging_api_model/models/create_warranty_request'
require 'messaging_api_model/models/create_warranty_response'
require 'messaging_api_model/models/error'
require 'messaging_api_model/models/error_list'
require 'messaging_api_model/models/get_attributes_response'
require 'messaging_api_model/models/get_attributes_response_buyer'
require 'messaging_api_model/models/get_messaging_action_response'
require 'messaging_api_model/models/get_messaging_action_response__embedded'
require 'messaging_api_model/models/get_messaging_action_response__links'
require 'messaging_api_model/models/get_messaging_actions_for_order_response'
require 'messaging_api_model/models/get_messaging_actions_for_order_response__embedded'
require 'messaging_api_model/models/get_messaging_actions_for_order_response__links'
require 'messaging_api_model/models/get_schema_response'
require 'messaging_api_model/models/get_schema_response__links'
require 'messaging_api_model/models/invoice_request'
require 'messaging_api_model/models/invoice_response'
require 'messaging_api_model/models/link_object'
require 'messaging_api_model/models/messaging_action'
require 'messaging_api_model/models/schema'

# APIs
require 'messaging_api_model/api/messaging_api'

module AmznSpApi::MessagingApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmznSpApi::MessagingApiModel.configure do |config|
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
