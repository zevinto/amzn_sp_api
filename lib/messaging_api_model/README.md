# messaging_api_model

AmznSpApi::MessagingApiModel - the Ruby gem for the Selling Partner API for Messaging

With the Messaging API you can build applications that send messages to buyers. You can get a list of message types that are available for an order that you specify, then call an operation that sends a message to the buyer for that order. The Messaging API returns responses that are formed according to the <a href=https://tools.ietf.org/html/draft-kelly-json-hal-08>JSON Hypertext Application Language</a> (HAL) standard.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v1
- Package version: 1.0.0
- Build package: io.swagger.codegen.v3.generators.ruby.RubyClientCodegen
For more information, please visit [https://sellercentral.amazon.com/gp/mws/contactus.html](https://sellercentral.amazon.com/gp/mws/contactus.html)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build messaging_api_model.gemspec
```

Then either install the gem locally:

```shell
gem install ./messaging_api_model-1.0.0.gem
```
(for development, run `gem install --dev ./messaging_api_model-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'messaging_api_model', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'messaging_api_model', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'messaging_api_model'

api_instance = AmznSpApi::MessagingApiModel::MessagingApi.new
body = AmznSpApi::MessagingApiModel::CreateConfirmCustomizationDetailsRequest.new # CreateConfirmCustomizationDetailsRequest | 
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This specifies the order for which a message is sent.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This specifies the marketplace in which the order was placed. Only one marketplace can be specified.


begin
  result = api_instance.confirm_customization_details(body, amazon_order_id, marketplace_ids)
  p result
rescue AmznSpApi::MessagingApiModel::ApiError => e
  puts "Exception when calling MessagingApi->confirm_customization_details: #{e}"
end

api_instance = AmznSpApi::MessagingApiModel::MessagingApi.new
body = AmznSpApi::MessagingApiModel::CreateAmazonMotorsRequest.new # CreateAmazonMotorsRequest | 
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This specifies the order for which a message is sent.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This specifies the marketplace in which the order was placed. Only one marketplace can be specified.


begin
  result = api_instance.create_amazon_motors(body, amazon_order_id, marketplace_ids)
  p result
rescue AmznSpApi::MessagingApiModel::ApiError => e
  puts "Exception when calling MessagingApi->create_amazon_motors: #{e}"
end

api_instance = AmznSpApi::MessagingApiModel::MessagingApi.new
body = AmznSpApi::MessagingApiModel::CreateConfirmDeliveryDetailsRequest.new # CreateConfirmDeliveryDetailsRequest | 
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This specifies the order for which a message is sent.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This specifies the marketplace in which the order was placed. Only one marketplace can be specified.


begin
  result = api_instance.create_confirm_delivery_details(body, amazon_order_id, marketplace_ids)
  p result
rescue AmznSpApi::MessagingApiModel::ApiError => e
  puts "Exception when calling MessagingApi->create_confirm_delivery_details: #{e}"
end

api_instance = AmznSpApi::MessagingApiModel::MessagingApi.new
body = AmznSpApi::MessagingApiModel::CreateConfirmOrderDetailsRequest.new # CreateConfirmOrderDetailsRequest | 
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This specifies the order for which a message is sent.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This specifies the marketplace in which the order was placed. Only one marketplace can be specified.


begin
  result = api_instance.create_confirm_order_details(body, amazon_order_id, marketplace_ids)
  p result
rescue AmznSpApi::MessagingApiModel::ApiError => e
  puts "Exception when calling MessagingApi->create_confirm_order_details: #{e}"
end

api_instance = AmznSpApi::MessagingApiModel::MessagingApi.new
body = AmznSpApi::MessagingApiModel::CreateConfirmServiceDetailsRequest.new # CreateConfirmServiceDetailsRequest | 
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This specifies the order for which a message is sent.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This specifies the marketplace in which the order was placed. Only one marketplace can be specified.


begin
  result = api_instance.create_confirm_service_details(body, amazon_order_id, marketplace_ids)
  p result
rescue AmznSpApi::MessagingApiModel::ApiError => e
  puts "Exception when calling MessagingApi->create_confirm_service_details: #{e}"
end

api_instance = AmznSpApi::MessagingApiModel::MessagingApi.new
body = AmznSpApi::MessagingApiModel::CreateDigitalAccessKeyRequest.new # CreateDigitalAccessKeyRequest | 
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This specifies the order for which a message is sent.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This specifies the marketplace in which the order was placed. Only one marketplace can be specified.


begin
  result = api_instance.create_digital_access_key(body, amazon_order_id, marketplace_ids)
  p result
rescue AmznSpApi::MessagingApiModel::ApiError => e
  puts "Exception when calling MessagingApi->create_digital_access_key: #{e}"
end

api_instance = AmznSpApi::MessagingApiModel::MessagingApi.new
body = AmznSpApi::MessagingApiModel::CreateLegalDisclosureRequest.new # CreateLegalDisclosureRequest | 
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This specifies the order for which a message is sent.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This specifies the marketplace in which the order was placed. Only one marketplace can be specified.


begin
  result = api_instance.create_legal_disclosure(body, amazon_order_id, marketplace_ids)
  p result
rescue AmznSpApi::MessagingApiModel::ApiError => e
  puts "Exception when calling MessagingApi->create_legal_disclosure: #{e}"
end

api_instance = AmznSpApi::MessagingApiModel::MessagingApi.new
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This specifies the order for which a message is sent.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This specifies the marketplace in which the order was placed. Only one marketplace can be specified.


begin
  result = api_instance.create_negative_feedback_removal(amazon_order_id, marketplace_ids)
  p result
rescue AmznSpApi::MessagingApiModel::ApiError => e
  puts "Exception when calling MessagingApi->create_negative_feedback_removal: #{e}"
end

api_instance = AmznSpApi::MessagingApiModel::MessagingApi.new
body = AmznSpApi::MessagingApiModel::CreateUnexpectedProblemRequest.new # CreateUnexpectedProblemRequest | 
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This specifies the order for which a message is sent.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This specifies the marketplace in which the order was placed. Only one marketplace can be specified.


begin
  result = api_instance.create_unexpected_problem(body, amazon_order_id, marketplace_ids)
  p result
rescue AmznSpApi::MessagingApiModel::ApiError => e
  puts "Exception when calling MessagingApi->create_unexpected_problem: #{e}"
end

api_instance = AmznSpApi::MessagingApiModel::MessagingApi.new
body = AmznSpApi::MessagingApiModel::CreateWarrantyRequest.new # CreateWarrantyRequest | 
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This specifies the order for which a message is sent.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This specifies the marketplace in which the order was placed. Only one marketplace can be specified.


begin
  result = api_instance.create_warranty(body, amazon_order_id, marketplace_ids)
  p result
rescue AmznSpApi::MessagingApiModel::ApiError => e
  puts "Exception when calling MessagingApi->create_warranty: #{e}"
end

api_instance = AmznSpApi::MessagingApiModel::MessagingApi.new
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This specifies the order for which a message is sent.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This specifies the marketplace in which the order was placed. Only one marketplace can be specified.


begin
  result = api_instance.get_attributes(amazon_order_id, marketplace_ids)
  p result
rescue AmznSpApi::MessagingApiModel::ApiError => e
  puts "Exception when calling MessagingApi->get_attributes: #{e}"
end

api_instance = AmznSpApi::MessagingApiModel::MessagingApi.new
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This specifies the order for which you want a list of available message types.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This specifies the marketplace in which the order was placed. Only one marketplace can be specified.


begin
  result = api_instance.get_messaging_actions_for_order(amazon_order_id, marketplace_ids)
  p result
rescue AmznSpApi::MessagingApiModel::ApiError => e
  puts "Exception when calling MessagingApi->get_messaging_actions_for_order: #{e}"
end

api_instance = AmznSpApi::MessagingApiModel::MessagingApi.new
body = AmznSpApi::MessagingApiModel::InvoiceRequest.new # InvoiceRequest | 
amazon_order_id = 'amazon_order_id_example' # String | An Amazon order identifier. This specifies the order for which a message is sent.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A marketplace identifier. This specifies the marketplace in which the order was placed. Only one marketplace can be specified.


begin
  result = api_instance.send_invoice(body, amazon_order_id, marketplace_ids)
  p result
rescue AmznSpApi::MessagingApiModel::ApiError => e
  puts "Exception when calling MessagingApi->send_invoice: #{e}"
end
```

## Documentation for API Endpoints

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AmznSpApi::MessagingApiModel::MessagingApi* | [**confirm_customization_details**](docs/MessagingApi.md#confirm_customization_details) | **POST** /messaging/v1/orders/{amazonOrderId}/messages/confirmCustomizationDetails | 
*AmznSpApi::MessagingApiModel::MessagingApi* | [**create_amazon_motors**](docs/MessagingApi.md#create_amazon_motors) | **POST** /messaging/v1/orders/{amazonOrderId}/messages/amazonMotors | 
*AmznSpApi::MessagingApiModel::MessagingApi* | [**create_confirm_delivery_details**](docs/MessagingApi.md#create_confirm_delivery_details) | **POST** /messaging/v1/orders/{amazonOrderId}/messages/confirmDeliveryDetails | 
*AmznSpApi::MessagingApiModel::MessagingApi* | [**create_confirm_order_details**](docs/MessagingApi.md#create_confirm_order_details) | **POST** /messaging/v1/orders/{amazonOrderId}/messages/confirmOrderDetails | 
*AmznSpApi::MessagingApiModel::MessagingApi* | [**create_confirm_service_details**](docs/MessagingApi.md#create_confirm_service_details) | **POST** /messaging/v1/orders/{amazonOrderId}/messages/confirmServiceDetails | 
*AmznSpApi::MessagingApiModel::MessagingApi* | [**create_digital_access_key**](docs/MessagingApi.md#create_digital_access_key) | **POST** /messaging/v1/orders/{amazonOrderId}/messages/digitalAccessKey | 
*AmznSpApi::MessagingApiModel::MessagingApi* | [**create_legal_disclosure**](docs/MessagingApi.md#create_legal_disclosure) | **POST** /messaging/v1/orders/{amazonOrderId}/messages/legalDisclosure | 
*AmznSpApi::MessagingApiModel::MessagingApi* | [**create_negative_feedback_removal**](docs/MessagingApi.md#create_negative_feedback_removal) | **POST** /messaging/v1/orders/{amazonOrderId}/messages/negativeFeedbackRemoval | 
*AmznSpApi::MessagingApiModel::MessagingApi* | [**create_unexpected_problem**](docs/MessagingApi.md#create_unexpected_problem) | **POST** /messaging/v1/orders/{amazonOrderId}/messages/unexpectedProblem | 
*AmznSpApi::MessagingApiModel::MessagingApi* | [**create_warranty**](docs/MessagingApi.md#create_warranty) | **POST** /messaging/v1/orders/{amazonOrderId}/messages/warranty | 
*AmznSpApi::MessagingApiModel::MessagingApi* | [**get_attributes**](docs/MessagingApi.md#get_attributes) | **GET** /messaging/v1/orders/{amazonOrderId}/attributes | 
*AmznSpApi::MessagingApiModel::MessagingApi* | [**get_messaging_actions_for_order**](docs/MessagingApi.md#get_messaging_actions_for_order) | **GET** /messaging/v1/orders/{amazonOrderId} | 
*AmznSpApi::MessagingApiModel::MessagingApi* | [**send_invoice**](docs/MessagingApi.md#send_invoice) | **POST** /messaging/v1/orders/{amazonOrderId}/messages/invoice | 

## Documentation for Models

 - [AmznSpApi::MessagingApiModel::Attachment](docs/Attachment.md)
 - [AmznSpApi::MessagingApiModel::CreateAmazonMotorsRequest](docs/CreateAmazonMotorsRequest.md)
 - [AmznSpApi::MessagingApiModel::CreateAmazonMotorsResponse](docs/CreateAmazonMotorsResponse.md)
 - [AmznSpApi::MessagingApiModel::CreateConfirmCustomizationDetailsRequest](docs/CreateConfirmCustomizationDetailsRequest.md)
 - [AmznSpApi::MessagingApiModel::CreateConfirmCustomizationDetailsResponse](docs/CreateConfirmCustomizationDetailsResponse.md)
 - [AmznSpApi::MessagingApiModel::CreateConfirmDeliveryDetailsRequest](docs/CreateConfirmDeliveryDetailsRequest.md)
 - [AmznSpApi::MessagingApiModel::CreateConfirmDeliveryDetailsResponse](docs/CreateConfirmDeliveryDetailsResponse.md)
 - [AmznSpApi::MessagingApiModel::CreateConfirmOrderDetailsRequest](docs/CreateConfirmOrderDetailsRequest.md)
 - [AmznSpApi::MessagingApiModel::CreateConfirmOrderDetailsResponse](docs/CreateConfirmOrderDetailsResponse.md)
 - [AmznSpApi::MessagingApiModel::CreateConfirmServiceDetailsRequest](docs/CreateConfirmServiceDetailsRequest.md)
 - [AmznSpApi::MessagingApiModel::CreateConfirmServiceDetailsResponse](docs/CreateConfirmServiceDetailsResponse.md)
 - [AmznSpApi::MessagingApiModel::CreateDigitalAccessKeyRequest](docs/CreateDigitalAccessKeyRequest.md)
 - [AmznSpApi::MessagingApiModel::CreateDigitalAccessKeyResponse](docs/CreateDigitalAccessKeyResponse.md)
 - [AmznSpApi::MessagingApiModel::CreateLegalDisclosureRequest](docs/CreateLegalDisclosureRequest.md)
 - [AmznSpApi::MessagingApiModel::CreateLegalDisclosureResponse](docs/CreateLegalDisclosureResponse.md)
 - [AmznSpApi::MessagingApiModel::CreateNegativeFeedbackRemovalResponse](docs/CreateNegativeFeedbackRemovalResponse.md)
 - [AmznSpApi::MessagingApiModel::CreateUnexpectedProblemRequest](docs/CreateUnexpectedProblemRequest.md)
 - [AmznSpApi::MessagingApiModel::CreateUnexpectedProblemResponse](docs/CreateUnexpectedProblemResponse.md)
 - [AmznSpApi::MessagingApiModel::CreateWarrantyRequest](docs/CreateWarrantyRequest.md)
 - [AmznSpApi::MessagingApiModel::CreateWarrantyResponse](docs/CreateWarrantyResponse.md)
 - [AmznSpApi::MessagingApiModel::Error](docs/Error.md)
 - [AmznSpApi::MessagingApiModel::ErrorList](docs/ErrorList.md)
 - [AmznSpApi::MessagingApiModel::GetAttributesResponse](docs/GetAttributesResponse.md)
 - [AmznSpApi::MessagingApiModel::GetAttributesResponseBuyer](docs/GetAttributesResponseBuyer.md)
 - [AmznSpApi::MessagingApiModel::GetMessagingActionResponse](docs/GetMessagingActionResponse.md)
 - [AmznSpApi::MessagingApiModel::GetMessagingActionResponseEmbedded](docs/GetMessagingActionResponseEmbedded.md)
 - [AmznSpApi::MessagingApiModel::GetMessagingActionResponseLinks](docs/GetMessagingActionResponseLinks.md)
 - [AmznSpApi::MessagingApiModel::GetMessagingActionsForOrderResponse](docs/GetMessagingActionsForOrderResponse.md)
 - [AmznSpApi::MessagingApiModel::GetMessagingActionsForOrderResponseEmbedded](docs/GetMessagingActionsForOrderResponseEmbedded.md)
 - [AmznSpApi::MessagingApiModel::GetMessagingActionsForOrderResponseLinks](docs/GetMessagingActionsForOrderResponseLinks.md)
 - [AmznSpApi::MessagingApiModel::GetSchemaResponse](docs/GetSchemaResponse.md)
 - [AmznSpApi::MessagingApiModel::GetSchemaResponseLinks](docs/GetSchemaResponseLinks.md)
 - [AmznSpApi::MessagingApiModel::InvoiceRequest](docs/InvoiceRequest.md)
 - [AmznSpApi::MessagingApiModel::InvoiceResponse](docs/InvoiceResponse.md)
 - [AmznSpApi::MessagingApiModel::LinkObject](docs/LinkObject.md)
 - [AmznSpApi::MessagingApiModel::MessagingAction](docs/MessagingAction.md)
 - [AmznSpApi::MessagingApiModel::Schema](docs/Schema.md)

## Documentation for Authorization

 All endpoints do not require authorization.

