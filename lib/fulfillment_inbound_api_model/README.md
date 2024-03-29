# fulfillment_inbound_api_model

AmznSpApi::FulfillmentInboundApiModel - the Ruby gem for the Selling Partner API for Fulfillment Inbound

The Selling Partner API for Fulfillment Inbound lets you create applications that create and update inbound shipments of inventory to Amazon's fulfillment network.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v0
- Package version: 1.0.0
- Build package: io.swagger.codegen.v3.generators.ruby.RubyClientCodegen
For more information, please visit [https://sellercentral.amazon.com/gp/mws/contactus.html](https://sellercentral.amazon.com/gp/mws/contactus.html)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build fulfillment_inbound_api_model.gemspec
```

Then either install the gem locally:

```shell
gem install ./fulfillment_inbound_api_model-1.0.0.gem
```
(for development, run `gem install --dev ./fulfillment_inbound_api_model-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'fulfillment_inbound_api_model', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'fulfillment_inbound_api_model', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'fulfillment_inbound_api_model'

api_instance = AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
shipment_id = 'shipment_id_example' # String | A shipment identifier originally returned by the createInboundShipmentPlan operation.
need_by_date = Date.parse('2013-10-20') # Date | Date that the shipment must arrive at the Amazon fulfillment center to avoid delivery promise breaks for pre-ordered items. Must be in YYYY-MM-DD format. The response to the getPreorderInfo operation returns this value.
marketplace_id = 'marketplace_id_example' # String | A marketplace identifier. Specifies the marketplace the shipment is tied to.


begin
  result = api_instance.confirm_preorder(shipment_id, need_by_date, marketplace_id)
  p result
rescue AmznSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->confirm_preorder: #{e}"
end

api_instance = AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
shipment_id = 'shipment_id_example' # String | A shipment identifier originally returned by the createInboundShipmentPlan operation.


begin
  result = api_instance.confirm_transport(shipment_id)
  p result
rescue AmznSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->confirm_transport: #{e}"
end

api_instance = AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
body = AmznSpApi::FulfillmentInboundApiModel::InboundShipmentRequest.new # InboundShipmentRequest | 
shipment_id = 'shipment_id_example' # String | A shipment identifier originally returned by the createInboundShipmentPlan operation.


begin
  result = api_instance.create_inbound_shipment(body, shipment_id)
  p result
rescue AmznSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->create_inbound_shipment: #{e}"
end

api_instance = AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
body = AmznSpApi::FulfillmentInboundApiModel::CreateInboundShipmentPlanRequest.new # CreateInboundShipmentPlanRequest | 


begin
  result = api_instance.create_inbound_shipment_plan(body)
  p result
rescue AmznSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->create_inbound_shipment_plan: #{e}"
end

api_instance = AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
shipment_id = 'shipment_id_example' # String | A shipment identifier originally returned by the createInboundShipmentPlan operation.


begin
  result = api_instance.estimate_transport(shipment_id)
  p result
rescue AmznSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->estimate_transport: #{e}"
end

api_instance = AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
shipment_id = 'shipment_id_example' # String | A shipment identifier originally returned by the createInboundShipmentPlan operation.


begin
  result = api_instance.get_bill_of_lading(shipment_id)
  p result
rescue AmznSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->get_bill_of_lading: #{e}"
end

api_instance = AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
marketplace_id = 'marketplace_id_example' # String | A marketplace identifier. Specifies the marketplace where the product would be stored.
opts = { 
  seller_sku_list: ['seller_sku_list_example'], # Array<String> | A list of SellerSKU values. Used to identify items for which you want inbound guidance for shipment to Amazon's fulfillment network. Note: SellerSKU is qualified by the SellerId, which is included with every Selling Partner API operation that you submit. If you specify a SellerSKU that identifies a variation parent ASIN, this operation returns an error. A variation parent ASIN represents a generic product that cannot be sold. Variation child ASINs represent products that have specific characteristics (such as size and color) and can be sold. 
  asin_list: ['asin_list_example'] # Array<String> | A list of ASIN values. Used to identify items for which you want inbound guidance for shipment to Amazon's fulfillment network. Note: If you specify a ASIN that identifies a variation parent ASIN, this operation returns an error. A variation parent ASIN represents a generic product that cannot be sold. Variation child ASINs represent products that have specific characteristics (such as size and color) and can be sold.
}

begin
  result = api_instance.get_inbound_guidance(marketplace_id, opts)
  p result
rescue AmznSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->get_inbound_guidance: #{e}"
end

api_instance = AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
shipment_id = 'shipment_id_example' # String | A shipment identifier originally returned by the createInboundShipmentPlan operation.
page_type = 'page_type_example' # String | The page type to use to print the labels. Submitting a PageType value that is not supported in your marketplace returns an error.
label_type = 'label_type_example' # String | The type of labels requested. 
opts = { 
  number_of_packages: 56, # Integer | The number of packages in the shipment.
  package_labels_to_print: ['package_labels_to_print_example'], # Array<String> | A list of identifiers that specify packages for which you want package labels printed.  Must match CartonId values previously passed using the FBA Inbound Shipment Carton Information Feed. If not, the operation returns the IncorrectPackageIdentifier error code.
  number_of_pallets: 56, # Integer | The number of pallets in the shipment. This returns four identical labels for each pallet.
  page_size: 56, # Integer | The page size for paginating through the total packages' labels. This is a required parameter for Non-Partnered LTL Shipments. Max value:1000.
  page_start_index: 56 # Integer | The page start index for paginating through the total packages' labels. This is a required parameter for Non-Partnered LTL Shipments.
}

begin
  result = api_instance.get_labels(shipment_id, page_type, label_type, opts)
  p result
rescue AmznSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->get_labels: #{e}"
end

api_instance = AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
shipment_id = 'shipment_id_example' # String | A shipment identifier originally returned by the createInboundShipmentPlan operation.
marketplace_id = 'marketplace_id_example' # String | A marketplace identifier. Specifies the marketplace the shipment is tied to.


begin
  result = api_instance.get_preorder_info(shipment_id, marketplace_id)
  p result
rescue AmznSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->get_preorder_info: #{e}"
end

api_instance = AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
ship_to_country_code = 'ship_to_country_code_example' # String | The country code of the country to which the items will be shipped. Note that labeling requirements and item preparation instructions can vary by country.
opts = { 
  seller_sku_list: ['seller_sku_list_example'], # Array<String> | A list of SellerSKU values. Used to identify items for which you want labeling requirements and item preparation instructions for shipment to Amazon's fulfillment network. The SellerSKU is qualified by the Seller ID, which is included with every call to the Seller Partner API.  Note: Include seller SKUs that you have used to list items on Amazon's retail website. If you include a seller SKU that you have never used to list an item on Amazon's retail website, the seller SKU is returned in the InvalidSKUList property in the response.
  asin_list: ['asin_list_example'] # Array<String> | A list of ASIN values. Used to identify items for which you want item preparation instructions to help with item sourcing decisions.  Note: ASINs must be included in the product catalog for at least one of the marketplaces that the seller  participates in. Any ASIN that is not included in the product catalog for at least one of the marketplaces that the seller participates in is returned in the InvalidASINList property in the response. You can find out which marketplaces a seller participates in by calling the getMarketplaceParticipations operation in the Selling Partner API for Sellers.
}

begin
  result = api_instance.get_prep_instructions(ship_to_country_code, opts)
  p result
rescue AmznSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->get_prep_instructions: #{e}"
end

api_instance = AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
query_type = 'query_type_example' # String | Indicates whether items are returned using a date range (by providing the LastUpdatedAfter and LastUpdatedBefore parameters), or using NextToken, which continues returning items specified in a previous request.
marketplace_id = 'marketplace_id_example' # String | A marketplace identifier. Specifies the marketplace where the product would be stored.
opts = { 
  last_updated_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | A date used for selecting inbound shipment items that were last updated after (or at) a specified time. The selection includes updates made by Amazon and by the seller.
  last_updated_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | A date used for selecting inbound shipment items that were last updated before (or at) a specified time. The selection includes updates made by Amazon and by the seller.
  next_token: 'next_token_example' # String | A string token returned in the response to your previous request.
}

begin
  result = api_instance.get_shipment_items(query_type, marketplace_id, opts)
  p result
rescue AmznSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->get_shipment_items: #{e}"
end

api_instance = AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
shipment_id = 'shipment_id_example' # String | A shipment identifier used for selecting items in a specific inbound shipment.
marketplace_id = 'marketplace_id_example' # String | A marketplace identifier. Specifies the marketplace where the product would be stored.


begin
  result = api_instance.get_shipment_items_by_shipment_id(shipment_id, marketplace_id)
  p result
rescue AmznSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->get_shipment_items_by_shipment_id: #{e}"
end

api_instance = AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
query_type = 'query_type_example' # String | Indicates whether shipments are returned using shipment information (by providing the ShipmentStatusList or ShipmentIdList parameters), using a date range (by providing the LastUpdatedAfter and LastUpdatedBefore parameters), or by using NextToken to continue returning items specified in a previous request.
marketplace_id = 'marketplace_id_example' # String | A marketplace identifier. Specifies the marketplace where the product would be stored.
opts = { 
  shipment_status_list: ['shipment_status_list_example'], # Array<String> | A list of ShipmentStatus values. Used to select shipments with a current status that matches the status values that you specify.
  shipment_id_list: ['shipment_id_list_example'], # Array<String> | A list of shipment IDs used to select the shipments that you want. If both ShipmentStatusList and ShipmentIdList are specified, only shipments that match both parameters are returned.
  last_updated_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | A date used for selecting inbound shipments that were last updated after (or at) a specified time. The selection includes updates made by Amazon and by the seller.
  last_updated_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | A date used for selecting inbound shipments that were last updated before (or at) a specified time. The selection includes updates made by Amazon and by the seller.
  next_token: 'next_token_example' # String | A string token returned in the response to your previous request.
}

begin
  result = api_instance.get_shipments(query_type, marketplace_id, opts)
  p result
rescue AmznSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->get_shipments: #{e}"
end

api_instance = AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
shipment_id = 'shipment_id_example' # String | A shipment identifier originally returned by the createInboundShipmentPlan operation.


begin
  result = api_instance.get_transport_details(shipment_id)
  p result
rescue AmznSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->get_transport_details: #{e}"
end

api_instance = AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
body = AmznSpApi::FulfillmentInboundApiModel::PutTransportDetailsRequest.new # PutTransportDetailsRequest | 
shipment_id = 'shipment_id_example' # String | A shipment identifier originally returned by the createInboundShipmentPlan operation.


begin
  result = api_instance.put_transport_details(body, shipment_id)
  p result
rescue AmznSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->put_transport_details: #{e}"
end

api_instance = AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
body = AmznSpApi::FulfillmentInboundApiModel::InboundShipmentRequest.new # InboundShipmentRequest | 
shipment_id = 'shipment_id_example' # String | A shipment identifier originally returned by the createInboundShipmentPlan operation.


begin
  result = api_instance.update_inbound_shipment(body, shipment_id)
  p result
rescue AmznSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->update_inbound_shipment: #{e}"
end

api_instance = AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi.new
shipment_id = 'shipment_id_example' # String | A shipment identifier originally returned by the createInboundShipmentPlan operation.


begin
  result = api_instance.void_transport(shipment_id)
  p result
rescue AmznSpApi::FulfillmentInboundApiModel::ApiError => e
  puts "Exception when calling FbaInboundApi->void_transport: #{e}"
end
```

## Documentation for API Endpoints

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**confirm_preorder**](docs/FbaInboundApi.md#confirm_preorder) | **PUT** /fba/inbound/v0/shipments/{shipmentId}/preorder/confirm | 
*AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**confirm_transport**](docs/FbaInboundApi.md#confirm_transport) | **POST** /fba/inbound/v0/shipments/{shipmentId}/transport/confirm | 
*AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**create_inbound_shipment**](docs/FbaInboundApi.md#create_inbound_shipment) | **POST** /fba/inbound/v0/shipments/{shipmentId} | 
*AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**create_inbound_shipment_plan**](docs/FbaInboundApi.md#create_inbound_shipment_plan) | **POST** /fba/inbound/v0/plans | 
*AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**estimate_transport**](docs/FbaInboundApi.md#estimate_transport) | **POST** /fba/inbound/v0/shipments/{shipmentId}/transport/estimate | 
*AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**get_bill_of_lading**](docs/FbaInboundApi.md#get_bill_of_lading) | **GET** /fba/inbound/v0/shipments/{shipmentId}/billOfLading | 
*AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**get_inbound_guidance**](docs/FbaInboundApi.md#get_inbound_guidance) | **GET** /fba/inbound/v0/itemsGuidance | 
*AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**get_labels**](docs/FbaInboundApi.md#get_labels) | **GET** /fba/inbound/v0/shipments/{shipmentId}/labels | 
*AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**get_preorder_info**](docs/FbaInboundApi.md#get_preorder_info) | **GET** /fba/inbound/v0/shipments/{shipmentId}/preorder | 
*AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**get_prep_instructions**](docs/FbaInboundApi.md#get_prep_instructions) | **GET** /fba/inbound/v0/prepInstructions | 
*AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**get_shipment_items**](docs/FbaInboundApi.md#get_shipment_items) | **GET** /fba/inbound/v0/shipmentItems | 
*AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**get_shipment_items_by_shipment_id**](docs/FbaInboundApi.md#get_shipment_items_by_shipment_id) | **GET** /fba/inbound/v0/shipments/{shipmentId}/items | 
*AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**get_shipments**](docs/FbaInboundApi.md#get_shipments) | **GET** /fba/inbound/v0/shipments | 
*AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**get_transport_details**](docs/FbaInboundApi.md#get_transport_details) | **GET** /fba/inbound/v0/shipments/{shipmentId}/transport | 
*AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**put_transport_details**](docs/FbaInboundApi.md#put_transport_details) | **PUT** /fba/inbound/v0/shipments/{shipmentId}/transport | 
*AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**update_inbound_shipment**](docs/FbaInboundApi.md#update_inbound_shipment) | **PUT** /fba/inbound/v0/shipments/{shipmentId} | 
*AmznSpApi::FulfillmentInboundApiModel::FbaInboundApi* | [**void_transport**](docs/FbaInboundApi.md#void_transport) | **POST** /fba/inbound/v0/shipments/{shipmentId}/transport/void | 

## Documentation for Models

 - [AmznSpApi::FulfillmentInboundApiModel::ASINInboundGuidance](docs/ASINInboundGuidance.md)
 - [AmznSpApi::FulfillmentInboundApiModel::ASINInboundGuidanceList](docs/ASINInboundGuidanceList.md)
 - [AmznSpApi::FulfillmentInboundApiModel::ASINPrepInstructions](docs/ASINPrepInstructions.md)
 - [AmznSpApi::FulfillmentInboundApiModel::ASINPrepInstructionsList](docs/ASINPrepInstructionsList.md)
 - [AmznSpApi::FulfillmentInboundApiModel::Address](docs/Address.md)
 - [AmznSpApi::FulfillmentInboundApiModel::AmazonPrepFeesDetails](docs/AmazonPrepFeesDetails.md)
 - [AmznSpApi::FulfillmentInboundApiModel::AmazonPrepFeesDetailsList](docs/AmazonPrepFeesDetailsList.md)
 - [AmznSpApi::FulfillmentInboundApiModel::Amount](docs/Amount.md)
 - [AmznSpApi::FulfillmentInboundApiModel::BarcodeInstruction](docs/BarcodeInstruction.md)
 - [AmznSpApi::FulfillmentInboundApiModel::BigDecimalType](docs/BigDecimalType.md)
 - [AmznSpApi::FulfillmentInboundApiModel::BillOfLadingDownloadURL](docs/BillOfLadingDownloadURL.md)
 - [AmznSpApi::FulfillmentInboundApiModel::BoxContentsFeeDetails](docs/BoxContentsFeeDetails.md)
 - [AmznSpApi::FulfillmentInboundApiModel::BoxContentsSource](docs/BoxContentsSource.md)
 - [AmznSpApi::FulfillmentInboundApiModel::CommonTransportResult](docs/CommonTransportResult.md)
 - [AmznSpApi::FulfillmentInboundApiModel::Condition](docs/Condition.md)
 - [AmznSpApi::FulfillmentInboundApiModel::ConfirmPreorderResponse](docs/ConfirmPreorderResponse.md)
 - [AmznSpApi::FulfillmentInboundApiModel::ConfirmPreorderResult](docs/ConfirmPreorderResult.md)
 - [AmznSpApi::FulfillmentInboundApiModel::ConfirmTransportResponse](docs/ConfirmTransportResponse.md)
 - [AmznSpApi::FulfillmentInboundApiModel::Contact](docs/Contact.md)
 - [AmznSpApi::FulfillmentInboundApiModel::CreateInboundShipmentPlanRequest](docs/CreateInboundShipmentPlanRequest.md)
 - [AmznSpApi::FulfillmentInboundApiModel::CreateInboundShipmentPlanResponse](docs/CreateInboundShipmentPlanResponse.md)
 - [AmznSpApi::FulfillmentInboundApiModel::CreateInboundShipmentPlanResult](docs/CreateInboundShipmentPlanResult.md)
 - [AmznSpApi::FulfillmentInboundApiModel::CurrencyCode](docs/CurrencyCode.md)
 - [AmznSpApi::FulfillmentInboundApiModel::DateStringType](docs/DateStringType.md)
 - [AmznSpApi::FulfillmentInboundApiModel::Dimensions](docs/Dimensions.md)
 - [AmznSpApi::FulfillmentInboundApiModel::Error](docs/Error.md)
 - [AmznSpApi::FulfillmentInboundApiModel::ErrorList](docs/ErrorList.md)
 - [AmznSpApi::FulfillmentInboundApiModel::ErrorReason](docs/ErrorReason.md)
 - [AmznSpApi::FulfillmentInboundApiModel::EstimateTransportResponse](docs/EstimateTransportResponse.md)
 - [AmznSpApi::FulfillmentInboundApiModel::GetBillOfLadingResponse](docs/GetBillOfLadingResponse.md)
 - [AmznSpApi::FulfillmentInboundApiModel::GetInboundGuidanceResponse](docs/GetInboundGuidanceResponse.md)
 - [AmznSpApi::FulfillmentInboundApiModel::GetInboundGuidanceResult](docs/GetInboundGuidanceResult.md)
 - [AmznSpApi::FulfillmentInboundApiModel::GetLabelsResponse](docs/GetLabelsResponse.md)
 - [AmznSpApi::FulfillmentInboundApiModel::GetPreorderInfoResponse](docs/GetPreorderInfoResponse.md)
 - [AmznSpApi::FulfillmentInboundApiModel::GetPreorderInfoResult](docs/GetPreorderInfoResult.md)
 - [AmznSpApi::FulfillmentInboundApiModel::GetPrepInstructionsResponse](docs/GetPrepInstructionsResponse.md)
 - [AmznSpApi::FulfillmentInboundApiModel::GetPrepInstructionsResult](docs/GetPrepInstructionsResult.md)
 - [AmznSpApi::FulfillmentInboundApiModel::GetShipmentItemsResponse](docs/GetShipmentItemsResponse.md)
 - [AmznSpApi::FulfillmentInboundApiModel::GetShipmentItemsResult](docs/GetShipmentItemsResult.md)
 - [AmznSpApi::FulfillmentInboundApiModel::GetShipmentsResponse](docs/GetShipmentsResponse.md)
 - [AmznSpApi::FulfillmentInboundApiModel::GetShipmentsResult](docs/GetShipmentsResult.md)
 - [AmznSpApi::FulfillmentInboundApiModel::GetTransportDetailsResponse](docs/GetTransportDetailsResponse.md)
 - [AmznSpApi::FulfillmentInboundApiModel::GetTransportDetailsResult](docs/GetTransportDetailsResult.md)
 - [AmznSpApi::FulfillmentInboundApiModel::GuidanceReason](docs/GuidanceReason.md)
 - [AmznSpApi::FulfillmentInboundApiModel::GuidanceReasonList](docs/GuidanceReasonList.md)
 - [AmznSpApi::FulfillmentInboundApiModel::InboundGuidance](docs/InboundGuidance.md)
 - [AmznSpApi::FulfillmentInboundApiModel::InboundShipmentHeader](docs/InboundShipmentHeader.md)
 - [AmznSpApi::FulfillmentInboundApiModel::InboundShipmentInfo](docs/InboundShipmentInfo.md)
 - [AmznSpApi::FulfillmentInboundApiModel::InboundShipmentItem](docs/InboundShipmentItem.md)
 - [AmznSpApi::FulfillmentInboundApiModel::InboundShipmentItemList](docs/InboundShipmentItemList.md)
 - [AmznSpApi::FulfillmentInboundApiModel::InboundShipmentList](docs/InboundShipmentList.md)
 - [AmznSpApi::FulfillmentInboundApiModel::InboundShipmentPlan](docs/InboundShipmentPlan.md)
 - [AmznSpApi::FulfillmentInboundApiModel::InboundShipmentPlanItem](docs/InboundShipmentPlanItem.md)
 - [AmznSpApi::FulfillmentInboundApiModel::InboundShipmentPlanItemList](docs/InboundShipmentPlanItemList.md)
 - [AmznSpApi::FulfillmentInboundApiModel::InboundShipmentPlanList](docs/InboundShipmentPlanList.md)
 - [AmznSpApi::FulfillmentInboundApiModel::InboundShipmentPlanRequestItem](docs/InboundShipmentPlanRequestItem.md)
 - [AmznSpApi::FulfillmentInboundApiModel::InboundShipmentPlanRequestItemList](docs/InboundShipmentPlanRequestItemList.md)
 - [AmznSpApi::FulfillmentInboundApiModel::InboundShipmentRequest](docs/InboundShipmentRequest.md)
 - [AmznSpApi::FulfillmentInboundApiModel::InboundShipmentResponse](docs/InboundShipmentResponse.md)
 - [AmznSpApi::FulfillmentInboundApiModel::InboundShipmentResult](docs/InboundShipmentResult.md)
 - [AmznSpApi::FulfillmentInboundApiModel::IntendedBoxContentsSource](docs/IntendedBoxContentsSource.md)
 - [AmznSpApi::FulfillmentInboundApiModel::InvalidASIN](docs/InvalidASIN.md)
 - [AmznSpApi::FulfillmentInboundApiModel::InvalidASINList](docs/InvalidASINList.md)
 - [AmznSpApi::FulfillmentInboundApiModel::InvalidSKU](docs/InvalidSKU.md)
 - [AmznSpApi::FulfillmentInboundApiModel::InvalidSKUList](docs/InvalidSKUList.md)
 - [AmznSpApi::FulfillmentInboundApiModel::LabelDownloadURL](docs/LabelDownloadURL.md)
 - [AmznSpApi::FulfillmentInboundApiModel::LabelPrepPreference](docs/LabelPrepPreference.md)
 - [AmznSpApi::FulfillmentInboundApiModel::LabelPrepType](docs/LabelPrepType.md)
 - [AmznSpApi::FulfillmentInboundApiModel::NonPartneredLtlDataInput](docs/NonPartneredLtlDataInput.md)
 - [AmznSpApi::FulfillmentInboundApiModel::NonPartneredLtlDataOutput](docs/NonPartneredLtlDataOutput.md)
 - [AmznSpApi::FulfillmentInboundApiModel::NonPartneredSmallParcelDataInput](docs/NonPartneredSmallParcelDataInput.md)
 - [AmznSpApi::FulfillmentInboundApiModel::NonPartneredSmallParcelDataOutput](docs/NonPartneredSmallParcelDataOutput.md)
 - [AmznSpApi::FulfillmentInboundApiModel::NonPartneredSmallParcelPackageInput](docs/NonPartneredSmallParcelPackageInput.md)
 - [AmznSpApi::FulfillmentInboundApiModel::NonPartneredSmallParcelPackageInputList](docs/NonPartneredSmallParcelPackageInputList.md)
 - [AmznSpApi::FulfillmentInboundApiModel::NonPartneredSmallParcelPackageOutput](docs/NonPartneredSmallParcelPackageOutput.md)
 - [AmznSpApi::FulfillmentInboundApiModel::NonPartneredSmallParcelPackageOutputList](docs/NonPartneredSmallParcelPackageOutputList.md)
 - [AmznSpApi::FulfillmentInboundApiModel::PackageStatus](docs/PackageStatus.md)
 - [AmznSpApi::FulfillmentInboundApiModel::Pallet](docs/Pallet.md)
 - [AmznSpApi::FulfillmentInboundApiModel::PalletList](docs/PalletList.md)
 - [AmznSpApi::FulfillmentInboundApiModel::PartneredEstimate](docs/PartneredEstimate.md)
 - [AmznSpApi::FulfillmentInboundApiModel::PartneredLtlDataInput](docs/PartneredLtlDataInput.md)
 - [AmznSpApi::FulfillmentInboundApiModel::PartneredLtlDataOutput](docs/PartneredLtlDataOutput.md)
 - [AmznSpApi::FulfillmentInboundApiModel::PartneredSmallParcelDataInput](docs/PartneredSmallParcelDataInput.md)
 - [AmznSpApi::FulfillmentInboundApiModel::PartneredSmallParcelDataOutput](docs/PartneredSmallParcelDataOutput.md)
 - [AmznSpApi::FulfillmentInboundApiModel::PartneredSmallParcelPackageInput](docs/PartneredSmallParcelPackageInput.md)
 - [AmznSpApi::FulfillmentInboundApiModel::PartneredSmallParcelPackageInputList](docs/PartneredSmallParcelPackageInputList.md)
 - [AmznSpApi::FulfillmentInboundApiModel::PartneredSmallParcelPackageOutput](docs/PartneredSmallParcelPackageOutput.md)
 - [AmznSpApi::FulfillmentInboundApiModel::PartneredSmallParcelPackageOutputList](docs/PartneredSmallParcelPackageOutputList.md)
 - [AmznSpApi::FulfillmentInboundApiModel::PrepDetails](docs/PrepDetails.md)
 - [AmznSpApi::FulfillmentInboundApiModel::PrepDetailsList](docs/PrepDetailsList.md)
 - [AmznSpApi::FulfillmentInboundApiModel::PrepGuidance](docs/PrepGuidance.md)
 - [AmznSpApi::FulfillmentInboundApiModel::PrepInstruction](docs/PrepInstruction.md)
 - [AmznSpApi::FulfillmentInboundApiModel::PrepInstructionList](docs/PrepInstructionList.md)
 - [AmznSpApi::FulfillmentInboundApiModel::PrepOwner](docs/PrepOwner.md)
 - [AmznSpApi::FulfillmentInboundApiModel::ProNumber](docs/ProNumber.md)
 - [AmznSpApi::FulfillmentInboundApiModel::PutTransportDetailsRequest](docs/PutTransportDetailsRequest.md)
 - [AmznSpApi::FulfillmentInboundApiModel::PutTransportDetailsResponse](docs/PutTransportDetailsResponse.md)
 - [AmznSpApi::FulfillmentInboundApiModel::Quantity](docs/Quantity.md)
 - [AmznSpApi::FulfillmentInboundApiModel::SKUInboundGuidance](docs/SKUInboundGuidance.md)
 - [AmznSpApi::FulfillmentInboundApiModel::SKUInboundGuidanceList](docs/SKUInboundGuidanceList.md)
 - [AmznSpApi::FulfillmentInboundApiModel::SKUPrepInstructions](docs/SKUPrepInstructions.md)
 - [AmznSpApi::FulfillmentInboundApiModel::SKUPrepInstructionsList](docs/SKUPrepInstructionsList.md)
 - [AmznSpApi::FulfillmentInboundApiModel::SellerFreightClass](docs/SellerFreightClass.md)
 - [AmznSpApi::FulfillmentInboundApiModel::ShipmentStatus](docs/ShipmentStatus.md)
 - [AmznSpApi::FulfillmentInboundApiModel::ShipmentType](docs/ShipmentType.md)
 - [AmznSpApi::FulfillmentInboundApiModel::TimeStampStringType](docs/TimeStampStringType.md)
 - [AmznSpApi::FulfillmentInboundApiModel::TrackingId](docs/TrackingId.md)
 - [AmznSpApi::FulfillmentInboundApiModel::TransportContent](docs/TransportContent.md)
 - [AmznSpApi::FulfillmentInboundApiModel::TransportDetailInput](docs/TransportDetailInput.md)
 - [AmznSpApi::FulfillmentInboundApiModel::TransportDetailOutput](docs/TransportDetailOutput.md)
 - [AmznSpApi::FulfillmentInboundApiModel::TransportHeader](docs/TransportHeader.md)
 - [AmznSpApi::FulfillmentInboundApiModel::TransportResult](docs/TransportResult.md)
 - [AmznSpApi::FulfillmentInboundApiModel::TransportStatus](docs/TransportStatus.md)
 - [AmznSpApi::FulfillmentInboundApiModel::UnitOfMeasurement](docs/UnitOfMeasurement.md)
 - [AmznSpApi::FulfillmentInboundApiModel::UnitOfWeight](docs/UnitOfWeight.md)
 - [AmznSpApi::FulfillmentInboundApiModel::UnsignedIntType](docs/UnsignedIntType.md)
 - [AmznSpApi::FulfillmentInboundApiModel::VoidTransportResponse](docs/VoidTransportResponse.md)
 - [AmznSpApi::FulfillmentInboundApiModel::Weight](docs/Weight.md)

## Documentation for Authorization

 All endpoints do not require authorization.

