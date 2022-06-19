# catalog_items_api_model

AmznSpApi::CatalogItemsApiModel - the Ruby gem for the Selling Partner API for Catalog Items

The Selling Partner API for Catalog Items helps you programmatically retrieve item details for items in the catalog.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v0
- Package version: 0.1.0
- Build package: io.swagger.codegen.v3.generators.ruby.RubyClientCodegen
For more information, please visit [https://sellercentral.amazon.com/gp/mws/contactus.html](https://sellercentral.amazon.com/gp/mws/contactus.html)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build catalog_items_api_model.gemspec
```

Then either install the gem locally:

```shell
gem install ./catalog_items_api_model-0.1.0.gem
```
(for development, run `gem install --dev ./catalog_items_api_model-0.1.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'catalog_items_api_model', '~> 0.1.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'catalog_items_api_model', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'catalog_items_api_model'

api_instance = AmznSpApi::CatalogItemsApiModel::CatalogApi.new
marketplace_id = 'marketplace_id_example' # String | A marketplace identifier. Specifies the marketplace for the item.
asin = 'asin_example' # String | The Amazon Standard Identification Number (ASIN) of the item.


begin
  result = api_instance.get_catalog_item(marketplace_id, asin)
  p result
rescue AmznSpApi::CatalogItemsApiModel::ApiError => e
  puts "Exception when calling CatalogApi->get_catalog_item: #{e}"
end

api_instance = AmznSpApi::CatalogItemsApiModel::CatalogApi.new
marketplace_id = 'marketplace_id_example' # String | A marketplace identifier. Specifies the marketplace for the item.
opts = { 
  asin: 'asin_example', # String | The Amazon Standard Identification Number (ASIN) of the item.
  seller_sku: 'seller_sku_example' # String | Used to identify items in the given marketplace. SellerSKU is qualified by the seller's SellerId, which is included with every operation that you submit.
}

begin
  result = api_instance.list_catalog_categories(marketplace_id, opts)
  p result
rescue AmznSpApi::CatalogItemsApiModel::ApiError => e
  puts "Exception when calling CatalogApi->list_catalog_categories: #{e}"
end

api_instance = AmznSpApi::CatalogItemsApiModel::CatalogApi.new
marketplace_id = 'marketplace_id_example' # String | A marketplace identifier. Specifies the marketplace for which items are returned.
opts = { 
  query: 'query_example', # String | Keyword(s) to use to search for items in the catalog. Example: 'harry potter books'.
  query_context_id: 'query_context_id_example', # String | An identifier for the context within which the given search will be performed. A marketplace might provide mechanisms for constraining a search to a subset of potential items. For example, the retail marketplace allows queries to be constrained to a specific category. The QueryContextId parameter specifies such a subset. If it is omitted, the search will be performed using the default context for the marketplace, which will typically contain the largest set of items.
  seller_sku: 'seller_sku_example', # String | Used to identify an item in the given marketplace. SellerSKU is qualified by the seller's SellerId, which is included with every operation that you submit.
  upc: 'upc_example', # String | A 12-digit bar code used for retail packaging.
  ean: 'ean_example', # String | A European article number that uniquely identifies the catalog item, manufacturer, and its attributes.
  isbn: 'isbn_example', # String | The unique commercial book identifier used to identify books internationally.
  jan: 'jan_example' # String | A Japanese article number that uniquely identifies the product, manufacturer, and its attributes.
}

begin
  result = api_instance.list_catalog_items(marketplace_id, opts)
  p result
rescue AmznSpApi::CatalogItemsApiModel::ApiError => e
  puts "Exception when calling CatalogApi->list_catalog_items: #{e}"
end
```

## Documentation for API Endpoints

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AmznSpApi::CatalogItemsApiModel::CatalogApi* | [**get_catalog_item**](docs/CatalogApi.md#get_catalog_item) | **GET** /catalog/v0/items/{asin} | 
*AmznSpApi::CatalogItemsApiModel::CatalogApi* | [**list_catalog_categories**](docs/CatalogApi.md#list_catalog_categories) | **GET** /catalog/v0/categories | 
*AmznSpApi::CatalogItemsApiModel::CatalogApi* | [**list_catalog_items**](docs/CatalogApi.md#list_catalog_items) | **GET** /catalog/v0/items | 

## Documentation for Models

 - [AmznSpApi::CatalogItemsApiModel::ASINIdentifier](docs/ASINIdentifier.md)
 - [AmznSpApi::CatalogItemsApiModel::AttributeSetList](docs/AttributeSetList.md)
 - [AmznSpApi::CatalogItemsApiModel::AttributeSetListType](docs/AttributeSetListType.md)
 - [AmznSpApi::CatalogItemsApiModel::Categories](docs/Categories.md)
 - [AmznSpApi::CatalogItemsApiModel::CreatorType](docs/CreatorType.md)
 - [AmznSpApi::CatalogItemsApiModel::DecimalWithUnits](docs/DecimalWithUnits.md)
 - [AmznSpApi::CatalogItemsApiModel::DimensionType](docs/DimensionType.md)
 - [AmznSpApi::CatalogItemsApiModel::Error](docs/Error.md)
 - [AmznSpApi::CatalogItemsApiModel::ErrorList](docs/ErrorList.md)
 - [AmznSpApi::CatalogItemsApiModel::GetCatalogItemResponse](docs/GetCatalogItemResponse.md)
 - [AmznSpApi::CatalogItemsApiModel::IdentifierType](docs/IdentifierType.md)
 - [AmznSpApi::CatalogItemsApiModel::Image](docs/Image.md)
 - [AmznSpApi::CatalogItemsApiModel::Item](docs/Item.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemList](docs/ItemList.md)
 - [AmznSpApi::CatalogItemsApiModel::LanguageType](docs/LanguageType.md)
 - [AmznSpApi::CatalogItemsApiModel::ListCatalogCategoriesResponse](docs/ListCatalogCategoriesResponse.md)
 - [AmznSpApi::CatalogItemsApiModel::ListCatalogItemsResponse](docs/ListCatalogItemsResponse.md)
 - [AmznSpApi::CatalogItemsApiModel::ListMatchingItemsResponse](docs/ListMatchingItemsResponse.md)
 - [AmznSpApi::CatalogItemsApiModel::ListOfCategories](docs/ListOfCategories.md)
 - [AmznSpApi::CatalogItemsApiModel::Price](docs/Price.md)
 - [AmznSpApi::CatalogItemsApiModel::RelationshipList](docs/RelationshipList.md)
 - [AmznSpApi::CatalogItemsApiModel::RelationshipType](docs/RelationshipType.md)
 - [AmznSpApi::CatalogItemsApiModel::SalesRankList](docs/SalesRankList.md)
 - [AmznSpApi::CatalogItemsApiModel::SalesRankType](docs/SalesRankType.md)
 - [AmznSpApi::CatalogItemsApiModel::SellerSKUIdentifier](docs/SellerSKUIdentifier.md)

## Documentation for Authorization

 All endpoints do not require authorization.
