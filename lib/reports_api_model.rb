=begin
#Selling Partner API for Reports

#The Selling Partner API for Reports lets you retrieve and manage a variety of reports that can help selling partners manage their businesses.

OpenAPI spec version: 2021-06-30

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.36
=end

# Common files
require 'reports_api_model/api_client'
require 'reports_api_model/api_error'
require 'reports_api_model/version'
require 'reports_api_model/configuration'

# Models
require 'reports_api_model/models/create_report_response'
require 'reports_api_model/models/create_report_schedule_response'
require 'reports_api_model/models/create_report_schedule_specification'
require 'reports_api_model/models/create_report_specification'
require 'reports_api_model/models/error'
require 'reports_api_model/models/error_list'
require 'reports_api_model/models/get_reports_response'
require 'reports_api_model/models/report'
require 'reports_api_model/models/report_document'
require 'reports_api_model/models/report_list'
require 'reports_api_model/models/report_options'
require 'reports_api_model/models/report_schedule'
require 'reports_api_model/models/report_schedule_list'

# APIs
require 'reports_api_model/api/reports_api'

module AmznSpApi::ReportsApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmznSpApi::ReportsApiModel.configure do |config|
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
