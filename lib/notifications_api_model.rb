=begin
#Selling Partner API for Notifications

#The Selling Partner API for Notifications lets you subscribe to notifications that are relevant to a selling partner's business. Using this API you can create a destination to receive notifications, subscribe to notifications, delete notification subscriptions, and more.  For more information, see the [Notifications Use Case Guide](doc:notifications-api-v1-use-case-guide)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

# Common files
require 'notifications_api_model/api_client'
require 'notifications_api_model/api_error'
require 'notifications_api_model/version'
require 'notifications_api_model/configuration'

# Models
require 'notifications_api_model/models/create_destination_request'
require 'notifications_api_model/models/create_destination_response'
require 'notifications_api_model/models/create_subscription_request'
require 'notifications_api_model/models/create_subscription_response'
require 'notifications_api_model/models/delete_destination_response'
require 'notifications_api_model/models/delete_subscription_by_id_response'
require 'notifications_api_model/models/destination'
require 'notifications_api_model/models/destination_list'
require 'notifications_api_model/models/destination_resource'
require 'notifications_api_model/models/destination_resource_specification'
require 'notifications_api_model/models/error'
require 'notifications_api_model/models/error_list'
require 'notifications_api_model/models/event_bridge_resource'
require 'notifications_api_model/models/event_bridge_resource_specification'
require 'notifications_api_model/models/get_destination_response'
require 'notifications_api_model/models/get_destinations_response'
require 'notifications_api_model/models/get_subscription_by_id_response'
require 'notifications_api_model/models/get_subscription_response'
require 'notifications_api_model/models/sqs_resource'
require 'notifications_api_model/models/subscription'

# APIs
require 'notifications_api_model/api/notifications_api'

module AmznSpApi::NotificationsApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmznSpApi::NotificationsApiModel.configure do |config|
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
