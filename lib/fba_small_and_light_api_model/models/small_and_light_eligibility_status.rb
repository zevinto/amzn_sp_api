=begin
#Selling Partner API for FBA Small And Light

#The Selling Partner API for FBA Small and Light lets you help sellers manage their listings in the Small and Light program. The program reduces the cost of fulfilling orders for small and lightweight FBA inventory. You can enroll or remove items from the program and check item eligibility and enrollment status. You can also preview the estimated program fees charged to a seller for items sold while enrolled in the program.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'date'

module AmznSpApi::FbaSmallAndLightApiModel
  class SmallAndLightEligibilityStatus
    ELIGIBLE = 'ELIGIBLE'.freeze
    NOT_ELIGIBLE = 'NOT_ELIGIBLE'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = SmallAndLightEligibilityStatus.constants.select { |c| SmallAndLightEligibilityStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #SmallAndLightEligibilityStatus" if constantValues.empty?
      value
    end
  end
end
