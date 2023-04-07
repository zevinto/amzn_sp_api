=begin
#Selling Partner API for Orders

#The Selling Partner API for Orders helps you programmatically retrieve order information. These APIs let you develop fast, flexible, custom applications in areas like order synchronization, order research, and demand-based decision support tools.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.36
=end

require 'date'

module AmznSpApi::OrdersApiModel
  class ElectronicInvoiceStatus
    NOT_REQUIRED = 'NotRequired'.freeze
    NOT_FOUND = 'NotFound'.freeze
    PROCESSING = 'Processing'.freeze
    ERRORED = 'Errored'.freeze
    ACCEPTED = 'Accepted'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ElectronicInvoiceStatus.constants.select { |c| ElectronicInvoiceStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ElectronicInvoiceStatus" if constantValues.empty?
      value
    end
  end
end
