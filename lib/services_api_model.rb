=begin
#Selling Partner API for Services

#With the Services API, you can build applications that help service providers get and modify their service orders.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

# Common files
require 'services_api_model/api_client'
require 'services_api_model/api_error'
require 'services_api_model/version'
require 'services_api_model/configuration'

# Models
require 'services_api_model/models/add_appointment_request'
require 'services_api_model/models/address'
require 'services_api_model/models/appointment'
require 'services_api_model/models/appointment_id'
require 'services_api_model/models/appointment_time'
require 'services_api_model/models/appointment_time_input'
require 'services_api_model/models/associated_item'
require 'services_api_model/models/buyer'
require 'services_api_model/models/cancel_service_job_by_service_job_id_response'
require 'services_api_model/models/complete_service_job_by_service_job_id_response'
require 'services_api_model/models/error'
require 'services_api_model/models/error_list'
require 'services_api_model/models/get_service_job_by_service_job_id_response'
require 'services_api_model/models/get_service_jobs_response'
require 'services_api_model/models/item_delivery'
require 'services_api_model/models/item_delivery_promise'
require 'services_api_model/models/job_listing'
require 'services_api_model/models/order_id'
require 'services_api_model/models/poa'
require 'services_api_model/models/reschedule_appointment_request'
require 'services_api_model/models/reschedule_reason_code'
require 'services_api_model/models/scope_of_work'
require 'services_api_model/models/seller'
require 'services_api_model/models/service_job'
require 'services_api_model/models/service_job_id'
require 'services_api_model/models/service_job_provider'
require 'services_api_model/models/service_location'
require 'services_api_model/models/set_appointment_response'
require 'services_api_model/models/technician'
require 'services_api_model/models/warning'
require 'services_api_model/models/warning_list'

# APIs
require 'services_api_model/api/service_api'

module AmznSpApi::ServicesApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmznSpApi::ServicesApiModel.configure do |config|
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
