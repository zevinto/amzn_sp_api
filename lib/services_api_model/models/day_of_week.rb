=begin
#Selling Partner API for Services

#With the Services API, you can build applications that help service providers get and modify their service orders and manage their resources.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.36
=end

require 'date'

module AmznSpApi::ServicesApiModel
  class DayOfWeek
    MONDAY = 'MONDAY'.freeze
    TUESDAY = 'TUESDAY'.freeze
    WEDNESDAY = 'WEDNESDAY'.freeze
    THURSDAY = 'THURSDAY'.freeze
    FRIDAY = 'FRIDAY'.freeze
    SATURDAY = 'SATURDAY'.freeze
    SUNDAY = 'SUNDAY'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = DayOfWeek.constants.select { |c| DayOfWeek::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #DayOfWeek" if constantValues.empty?
      value
    end
  end
end
