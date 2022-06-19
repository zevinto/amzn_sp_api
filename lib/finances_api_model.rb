=begin
#Selling Partner API for Finances

#The Selling Partner API for Finances helps you obtain financial information relevant to a seller's business. You can obtain financial events for a given order, financial event group, or date range without having to wait until a statement period closes. You can also obtain financial event groups for a given date range.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

# Common files
require 'finances_api_model/api_client'
require 'finances_api_model/api_error'
require 'finances_api_model/version'
require 'finances_api_model/configuration'

# Models
require 'finances_api_model/models/adjustment_event'
require 'finances_api_model/models/adjustment_event_list'
require 'finances_api_model/models/adjustment_item'
require 'finances_api_model/models/adjustment_item_list'
require 'finances_api_model/models/affordability_expense_event'
require 'finances_api_model/models/affordability_expense_event_list'
require 'finances_api_model/models/big_decimal'
require 'finances_api_model/models/charge_component'
require 'finances_api_model/models/charge_component_list'
require 'finances_api_model/models/charge_instrument'
require 'finances_api_model/models/charge_instrument_list'
require 'finances_api_model/models/coupon_payment_event'
require 'finances_api_model/models/coupon_payment_event_list'
require 'finances_api_model/models/currency'
require 'finances_api_model/models/date'
require 'finances_api_model/models/debt_recovery_event'
require 'finances_api_model/models/debt_recovery_event_list'
require 'finances_api_model/models/debt_recovery_item'
require 'finances_api_model/models/debt_recovery_item_list'
require 'finances_api_model/models/direct_payment'
require 'finances_api_model/models/direct_payment_list'
require 'finances_api_model/models/error'
require 'finances_api_model/models/error_list'
require 'finances_api_model/models/fba_liquidation_event'
require 'finances_api_model/models/fba_liquidation_event_list'
require 'finances_api_model/models/fee_component'
require 'finances_api_model/models/fee_component_list'
require 'finances_api_model/models/financial_event_group'
require 'finances_api_model/models/financial_event_group_list'
require 'finances_api_model/models/financial_events'
require 'finances_api_model/models/imaging_services_fee_event'
require 'finances_api_model/models/imaging_services_fee_event_list'
require 'finances_api_model/models/list_financial_event_groups_payload'
require 'finances_api_model/models/list_financial_event_groups_response'
require 'finances_api_model/models/list_financial_events_payload'
require 'finances_api_model/models/list_financial_events_response'
require 'finances_api_model/models/loan_servicing_event'
require 'finances_api_model/models/loan_servicing_event_list'
require 'finances_api_model/models/network_commingling_transaction_event'
require 'finances_api_model/models/network_commingling_transaction_event_list'
require 'finances_api_model/models/pay_with_amazon_event'
require 'finances_api_model/models/pay_with_amazon_event_list'
require 'finances_api_model/models/product_ads_payment_event'
require 'finances_api_model/models/product_ads_payment_event_list'
require 'finances_api_model/models/promotion'
require 'finances_api_model/models/promotion_list'
require 'finances_api_model/models/removal_shipment_adjustment_event'
require 'finances_api_model/models/removal_shipment_adjustment_event_list'
require 'finances_api_model/models/removal_shipment_event'
require 'finances_api_model/models/removal_shipment_event_list'
require 'finances_api_model/models/removal_shipment_item'
require 'finances_api_model/models/removal_shipment_item_adjustment'
require 'finances_api_model/models/removal_shipment_item_list'
require 'finances_api_model/models/rental_transaction_event'
require 'finances_api_model/models/rental_transaction_event_list'
require 'finances_api_model/models/retrocharge_event'
require 'finances_api_model/models/retrocharge_event_list'
require 'finances_api_model/models/safet_reimbursement_event'
require 'finances_api_model/models/safet_reimbursement_event_list'
require 'finances_api_model/models/safet_reimbursement_item'
require 'finances_api_model/models/safet_reimbursement_item_list'
require 'finances_api_model/models/seller_deal_payment_event'
require 'finances_api_model/models/seller_deal_payment_event_list'
require 'finances_api_model/models/seller_review_enrollment_payment_event'
require 'finances_api_model/models/seller_review_enrollment_payment_event_list'
require 'finances_api_model/models/service_fee_event'
require 'finances_api_model/models/service_fee_event_list'
require 'finances_api_model/models/shipment_event'
require 'finances_api_model/models/shipment_event_list'
require 'finances_api_model/models/shipment_item'
require 'finances_api_model/models/shipment_item_list'
require 'finances_api_model/models/shipment_settle_event_list'
require 'finances_api_model/models/solution_provider_credit_event'
require 'finances_api_model/models/solution_provider_credit_event_list'
require 'finances_api_model/models/tax_withheld_component'
require 'finances_api_model/models/tax_withheld_component_list'
require 'finances_api_model/models/tax_withholding_event'
require 'finances_api_model/models/tax_withholding_event_list'
require 'finances_api_model/models/tax_withholding_period'
require 'finances_api_model/models/trial_shipment_event'
require 'finances_api_model/models/trial_shipment_event_list'

# APIs
require 'finances_api_model/api/default_api'

module AmznSpApi::FinancesApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmznSpApi::FinancesApiModel.configure do |config|
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
