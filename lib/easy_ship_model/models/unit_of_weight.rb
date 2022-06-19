=begin
#Selling Partner API for Easy Ship

#The Selling Partner API for Easy Ship helps you build applications that help sellers manage and ship Amazon Easy Ship orders.  Your Easy Ship applications can:  * Get available time slots for packages to be scheduled for delivery.  * Schedule, reschedule, and cancel Easy Ship orders.  * Print labels, invoices, and warranties.  See the [Marketplace Support Table](doc:easy-ship-api-v2022-03-23-use-case-guide) for the differences in Easy Ship operations by marketplace.

OpenAPI spec version: 2022-03-23
Contact: marketplaceapitest@amazon.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'date'

module AmznSpApi::EasyShipModel
  class UnitOfWeight
    GRAMS = 'Grams'.freeze
    G = 'G'.freeze

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
