=begin
#Selling Partner API for Orders

#The Selling Partner API for Orders helps you programmatically retrieve order information. These APIs let you develop fast, flexible, custom applications in areas like order synchronization, order research, and demand-based decision support tools.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.36
=end

require 'date'

module AmznSpApi::OrdersApiModel
  class ItemApprovalStatus
    PENDING_SELLING_PARTNER_APPROVAL = 'PENDING_SELLING_PARTNER_APPROVAL'.freeze
    PROCESSING_SELLING_PARTNER_APPROVAL = 'PROCESSING_SELLING_PARTNER_APPROVAL'.freeze
    PENDING_AMAZON_APPROVAL = 'PENDING_AMAZON_APPROVAL'.freeze
    APPROVED = 'APPROVED'.freeze
    APPROVED_WITH_CHANGES = 'APPROVED_WITH_CHANGES'.freeze
    DECLINED = 'DECLINED'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ItemApprovalStatus.constants.select { |c| ItemApprovalStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ItemApprovalStatus" if constantValues.empty?
      value
    end
  end
end