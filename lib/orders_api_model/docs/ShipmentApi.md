# AmznSpApi::OrdersApiModel::ShipmentApi

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**update_shipment_status**](ShipmentApi.md#update_shipment_status) | **POST** /orders/v0/orders/{orderId}/shipment | 

# **update_shipment_status**
> update_shipment_status(bodyorder_id)



Update the shipment status.

### Example
```ruby
# load the gem
require 'orders_api_model'

api_instance = AmznSpApi::OrdersApiModel::ShipmentApi.new
body = AmznSpApi::OrdersApiModel::UpdateShipmentStatusRequest.new # UpdateShipmentStatusRequest | Request to update the shipment status.
order_id = 'order_id_example' # String | An Amazon-defined order identifier, in 3-7-7 format.


begin
  api_instance.update_shipment_status(bodyorder_id)
rescue AmznSpApi::OrdersApiModel::ApiError => e
  puts "Exception when calling ShipmentApi->update_shipment_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateShipmentStatusRequest**](UpdateShipmentStatusRequest.md)| Request to update the shipment status. | 
 **order_id** | **String**| An Amazon-defined order identifier, in 3-7-7 format. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



