=begin
#Selling Partner API for Fulfillment Inbound

#The Selling Partner API for Fulfillment Inbound lets you create applications that create and update inbound shipments of inventory to Amazon's fulfillment network.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.36
=end

require 'date'

module AmznSpApi::FulfillmentInboundApiModel
  class UnitOfWeight
    POUNDS = 'pounds'.freeze
    KILOGRAMS = 'kilograms'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = UnitOfWeight.constants.select { |c| UnitOfWeight::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #UnitOfWeight" if constantValues.empty?
      value
    end
  end
end
