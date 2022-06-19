# finances_api_model

AmznSpApi::FinancesApiModel - the Ruby gem for the Selling Partner API for Finances

The Selling Partner API for Finances helps you obtain financial information relevant to a seller's business. You can obtain financial events for a given order, financial event group, or date range without having to wait until a statement period closes. You can also obtain financial event groups for a given date range.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v0
- Package version: 0.1.0
- Build package: io.swagger.codegen.v3.generators.ruby.RubyClientCodegen
For more information, please visit [https://sellercentral.amazon.com/gp/mws/contactus.html](https://sellercentral.amazon.com/gp/mws/contactus.html)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build finances_api_model.gemspec
```

Then either install the gem locally:

```shell
gem install ./finances_api_model-0.1.0.gem
```
(for development, run `gem install --dev ./finances_api_model-0.1.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'finances_api_model', '~> 0.1.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'finances_api_model', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'finances_api_model'

api_instance = AmznSpApi::FinancesApiModel::DefaultApi.new
opts = { 
  max_results_per_page: 100, # Integer | The maximum number of results to return per page.
  financial_event_group_started_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | A date used for selecting financial event groups that opened before (but not at) a specified date and time, in ISO 8601 format. The date-time  must be later than FinancialEventGroupStartedAfter and no later than two minutes before the request was submitted. If FinancialEventGroupStartedAfter and FinancialEventGroupStartedBefore are more than 180 days apart, no financial event groups are returned.
  financial_event_group_started_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | A date used for selecting financial event groups that opened after (or at) a specified date and time, in ISO 8601 format. The date-time must be no later than two minutes before the request was submitted.
  next_token: 'next_token_example' # String | A string token returned in the response of your previous request.
}

begin
  result = api_instance.list_financial_event_groups(opts)
  p result
rescue AmznSpApi::FinancesApiModel::ApiError => e
  puts "Exception when calling DefaultApi->list_financial_event_groups: #{e}"
end

api_instance = AmznSpApi::FinancesApiModel::DefaultApi.new
opts = { 
  max_results_per_page: 100, # Integer | The maximum number of results to return per page.
  posted_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | A date used for selecting financial events posted after (or at) a specified time. The date-time must be no later than two minutes before the request was submitted, in ISO 8601 date time format.
  posted_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | A date used for selecting financial events posted before (but not at) a specified time. The date-time must be later than PostedAfter and no later than two minutes before the request was submitted, in ISO 8601 date time format. If PostedAfter and PostedBefore are more than 180 days apart, no financial events are returned. You must specify the PostedAfter parameter if you specify the PostedBefore parameter. Default: Now minus two minutes.
  next_token: 'next_token_example' # String | A string token returned in the response of your previous request.
}

begin
  result = api_instance.list_financial_events(opts)
  p result
rescue AmznSpApi::FinancesApiModel::ApiError => e
  puts "Exception when calling DefaultApi->list_financial_events: #{e}"
end

api_instance = AmznSpApi::FinancesApiModel::DefaultApi.new
event_group_id = 'event_group_id_example' # String | The identifier of the financial event group to which the events belong.
opts = { 
  max_results_per_page: 100, # Integer | The maximum number of results to return per page.
  next_token: 'next_token_example' # String | A string token returned in the response of your previous request.
}

begin
  result = api_instance.list_financial_events_by_group_id(event_group_id, opts)
  p result
rescue AmznSpApi::FinancesApiModel::ApiError => e
  puts "Exception when calling DefaultApi->list_financial_events_by_group_id: #{e}"
end

api_instance = AmznSpApi::FinancesApiModel::DefaultApi.new
order_id = 'order_id_example' # String | An Amazon-defined order identifier, in 3-7-7 format.
opts = { 
  max_results_per_page: 100, # Integer | The maximum number of results to return per page.
  next_token: 'next_token_example' # String | A string token returned in the response of your previous request.
}

begin
  result = api_instance.list_financial_events_by_order_id(order_id, opts)
  p result
rescue AmznSpApi::FinancesApiModel::ApiError => e
  puts "Exception when calling DefaultApi->list_financial_events_by_order_id: #{e}"
end
```

## Documentation for API Endpoints

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AmznSpApi::FinancesApiModel::DefaultApi* | [**list_financial_event_groups**](docs/DefaultApi.md#list_financial_event_groups) | **GET** /finances/v0/financialEventGroups | 
*AmznSpApi::FinancesApiModel::DefaultApi* | [**list_financial_events**](docs/DefaultApi.md#list_financial_events) | **GET** /finances/v0/financialEvents | 
*AmznSpApi::FinancesApiModel::DefaultApi* | [**list_financial_events_by_group_id**](docs/DefaultApi.md#list_financial_events_by_group_id) | **GET** /finances/v0/financialEventGroups/{eventGroupId}/financialEvents | 
*AmznSpApi::FinancesApiModel::DefaultApi* | [**list_financial_events_by_order_id**](docs/DefaultApi.md#list_financial_events_by_order_id) | **GET** /finances/v0/orders/{orderId}/financialEvents | 

## Documentation for Models

 - [AmznSpApi::FinancesApiModel::AdjustmentEvent](docs/AdjustmentEvent.md)
 - [AmznSpApi::FinancesApiModel::AdjustmentEventList](docs/AdjustmentEventList.md)
 - [AmznSpApi::FinancesApiModel::AdjustmentItem](docs/AdjustmentItem.md)
 - [AmznSpApi::FinancesApiModel::AdjustmentItemList](docs/AdjustmentItemList.md)
 - [AmznSpApi::FinancesApiModel::AffordabilityExpenseEvent](docs/AffordabilityExpenseEvent.md)
 - [AmznSpApi::FinancesApiModel::AffordabilityExpenseEventList](docs/AffordabilityExpenseEventList.md)
 - [AmznSpApi::FinancesApiModel::BigDecimal](docs/BigDecimal.md)
 - [AmznSpApi::FinancesApiModel::ChargeComponent](docs/ChargeComponent.md)
 - [AmznSpApi::FinancesApiModel::ChargeComponentList](docs/ChargeComponentList.md)
 - [AmznSpApi::FinancesApiModel::ChargeInstrument](docs/ChargeInstrument.md)
 - [AmznSpApi::FinancesApiModel::ChargeInstrumentList](docs/ChargeInstrumentList.md)
 - [AmznSpApi::FinancesApiModel::CouponPaymentEvent](docs/CouponPaymentEvent.md)
 - [AmznSpApi::FinancesApiModel::CouponPaymentEventList](docs/CouponPaymentEventList.md)
 - [AmznSpApi::FinancesApiModel::Currency](docs/Currency.md)
 - [AmznSpApi::FinancesApiModel::Date](docs/Date.md)
 - [AmznSpApi::FinancesApiModel::DebtRecoveryEvent](docs/DebtRecoveryEvent.md)
 - [AmznSpApi::FinancesApiModel::DebtRecoveryEventList](docs/DebtRecoveryEventList.md)
 - [AmznSpApi::FinancesApiModel::DebtRecoveryItem](docs/DebtRecoveryItem.md)
 - [AmznSpApi::FinancesApiModel::DebtRecoveryItemList](docs/DebtRecoveryItemList.md)
 - [AmznSpApi::FinancesApiModel::DirectPayment](docs/DirectPayment.md)
 - [AmznSpApi::FinancesApiModel::DirectPaymentList](docs/DirectPaymentList.md)
 - [AmznSpApi::FinancesApiModel::Error](docs/Error.md)
 - [AmznSpApi::FinancesApiModel::ErrorList](docs/ErrorList.md)
 - [AmznSpApi::FinancesApiModel::FBALiquidationEvent](docs/FBALiquidationEvent.md)
 - [AmznSpApi::FinancesApiModel::FBALiquidationEventList](docs/FBALiquidationEventList.md)
 - [AmznSpApi::FinancesApiModel::FeeComponent](docs/FeeComponent.md)
 - [AmznSpApi::FinancesApiModel::FeeComponentList](docs/FeeComponentList.md)
 - [AmznSpApi::FinancesApiModel::FinancialEventGroup](docs/FinancialEventGroup.md)
 - [AmznSpApi::FinancesApiModel::FinancialEventGroupList](docs/FinancialEventGroupList.md)
 - [AmznSpApi::FinancesApiModel::FinancialEvents](docs/FinancialEvents.md)
 - [AmznSpApi::FinancesApiModel::ImagingServicesFeeEvent](docs/ImagingServicesFeeEvent.md)
 - [AmznSpApi::FinancesApiModel::ImagingServicesFeeEventList](docs/ImagingServicesFeeEventList.md)
 - [AmznSpApi::FinancesApiModel::ListFinancialEventGroupsPayload](docs/ListFinancialEventGroupsPayload.md)
 - [AmznSpApi::FinancesApiModel::ListFinancialEventGroupsResponse](docs/ListFinancialEventGroupsResponse.md)
 - [AmznSpApi::FinancesApiModel::ListFinancialEventsPayload](docs/ListFinancialEventsPayload.md)
 - [AmznSpApi::FinancesApiModel::ListFinancialEventsResponse](docs/ListFinancialEventsResponse.md)
 - [AmznSpApi::FinancesApiModel::LoanServicingEvent](docs/LoanServicingEvent.md)
 - [AmznSpApi::FinancesApiModel::LoanServicingEventList](docs/LoanServicingEventList.md)
 - [AmznSpApi::FinancesApiModel::NetworkComminglingTransactionEvent](docs/NetworkComminglingTransactionEvent.md)
 - [AmznSpApi::FinancesApiModel::NetworkComminglingTransactionEventList](docs/NetworkComminglingTransactionEventList.md)
 - [AmznSpApi::FinancesApiModel::PayWithAmazonEvent](docs/PayWithAmazonEvent.md)
 - [AmznSpApi::FinancesApiModel::PayWithAmazonEventList](docs/PayWithAmazonEventList.md)
 - [AmznSpApi::FinancesApiModel::ProductAdsPaymentEvent](docs/ProductAdsPaymentEvent.md)
 - [AmznSpApi::FinancesApiModel::ProductAdsPaymentEventList](docs/ProductAdsPaymentEventList.md)
 - [AmznSpApi::FinancesApiModel::Promotion](docs/Promotion.md)
 - [AmznSpApi::FinancesApiModel::PromotionList](docs/PromotionList.md)
 - [AmznSpApi::FinancesApiModel::RemovalShipmentAdjustmentEvent](docs/RemovalShipmentAdjustmentEvent.md)
 - [AmznSpApi::FinancesApiModel::RemovalShipmentAdjustmentEventList](docs/RemovalShipmentAdjustmentEventList.md)
 - [AmznSpApi::FinancesApiModel::RemovalShipmentEvent](docs/RemovalShipmentEvent.md)
 - [AmznSpApi::FinancesApiModel::RemovalShipmentEventList](docs/RemovalShipmentEventList.md)
 - [AmznSpApi::FinancesApiModel::RemovalShipmentItem](docs/RemovalShipmentItem.md)
 - [AmznSpApi::FinancesApiModel::RemovalShipmentItemAdjustment](docs/RemovalShipmentItemAdjustment.md)
 - [AmznSpApi::FinancesApiModel::RemovalShipmentItemList](docs/RemovalShipmentItemList.md)
 - [AmznSpApi::FinancesApiModel::RentalTransactionEvent](docs/RentalTransactionEvent.md)
 - [AmznSpApi::FinancesApiModel::RentalTransactionEventList](docs/RentalTransactionEventList.md)
 - [AmznSpApi::FinancesApiModel::RetrochargeEvent](docs/RetrochargeEvent.md)
 - [AmznSpApi::FinancesApiModel::RetrochargeEventList](docs/RetrochargeEventList.md)
 - [AmznSpApi::FinancesApiModel::SAFETReimbursementEvent](docs/SAFETReimbursementEvent.md)
 - [AmznSpApi::FinancesApiModel::SAFETReimbursementEventList](docs/SAFETReimbursementEventList.md)
 - [AmznSpApi::FinancesApiModel::SAFETReimbursementItem](docs/SAFETReimbursementItem.md)
 - [AmznSpApi::FinancesApiModel::SAFETReimbursementItemList](docs/SAFETReimbursementItemList.md)
 - [AmznSpApi::FinancesApiModel::SellerDealPaymentEvent](docs/SellerDealPaymentEvent.md)
 - [AmznSpApi::FinancesApiModel::SellerDealPaymentEventList](docs/SellerDealPaymentEventList.md)
 - [AmznSpApi::FinancesApiModel::SellerReviewEnrollmentPaymentEvent](docs/SellerReviewEnrollmentPaymentEvent.md)
 - [AmznSpApi::FinancesApiModel::SellerReviewEnrollmentPaymentEventList](docs/SellerReviewEnrollmentPaymentEventList.md)
 - [AmznSpApi::FinancesApiModel::ServiceFeeEvent](docs/ServiceFeeEvent.md)
 - [AmznSpApi::FinancesApiModel::ServiceFeeEventList](docs/ServiceFeeEventList.md)
 - [AmznSpApi::FinancesApiModel::ShipmentEvent](docs/ShipmentEvent.md)
 - [AmznSpApi::FinancesApiModel::ShipmentEventList](docs/ShipmentEventList.md)
 - [AmznSpApi::FinancesApiModel::ShipmentItem](docs/ShipmentItem.md)
 - [AmznSpApi::FinancesApiModel::ShipmentItemList](docs/ShipmentItemList.md)
 - [AmznSpApi::FinancesApiModel::ShipmentSettleEventList](docs/ShipmentSettleEventList.md)
 - [AmznSpApi::FinancesApiModel::SolutionProviderCreditEvent](docs/SolutionProviderCreditEvent.md)
 - [AmznSpApi::FinancesApiModel::SolutionProviderCreditEventList](docs/SolutionProviderCreditEventList.md)
 - [AmznSpApi::FinancesApiModel::TaxWithheldComponent](docs/TaxWithheldComponent.md)
 - [AmznSpApi::FinancesApiModel::TaxWithheldComponentList](docs/TaxWithheldComponentList.md)
 - [AmznSpApi::FinancesApiModel::TaxWithholdingEvent](docs/TaxWithholdingEvent.md)
 - [AmznSpApi::FinancesApiModel::TaxWithholdingEventList](docs/TaxWithholdingEventList.md)
 - [AmznSpApi::FinancesApiModel::TaxWithholdingPeriod](docs/TaxWithholdingPeriod.md)
 - [AmznSpApi::FinancesApiModel::TrialShipmentEvent](docs/TrialShipmentEvent.md)
 - [AmznSpApi::FinancesApiModel::TrialShipmentEventList](docs/TrialShipmentEventList.md)

## Documentation for Authorization

 All endpoints do not require authorization.
