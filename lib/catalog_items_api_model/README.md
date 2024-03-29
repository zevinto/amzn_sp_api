# catalog_items_api_model

AmznSpApi::CatalogItemsApiModel - the Ruby gem for the Selling Partner API for Catalog Items

The Selling Partner API for Catalog Items provides programmatic access to information about items in the Amazon catalog.  For more information, refer to the [Catalog Items API Use Case Guide](doc:catalog-items-api-v2022-04-01-use-case-guide).

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 2022-04-01
- Package version: 1.0.0
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
gem install ./catalog_items_api_model-1.0.0.gem
```
(for development, run `gem install --dev ./catalog_items_api_model-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'catalog_items_api_model', '~> 1.0.0'

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
asin = 'asin_example' # String | The Amazon Standard Identification Number (ASIN) of the item.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A comma-delimited list of Amazon marketplace identifiers. Data sets in the response contain data only for the specified marketplaces.
opts = { 
  included_data: ['included_data_example'], # Array<String> | A comma-delimited list of data sets to include in the response. Default: `summaries`.
  locale: 'locale_example' # String | Locale for retrieving localized summaries. Defaults to the primary locale of the marketplace.
}

begin
  result = api_instance.get_catalog_item(asin, marketplace_ids, opts)
  p result
rescue AmznSpApi::CatalogItemsApiModel::ApiError => e
  puts "Exception when calling CatalogApi->get_catalog_item: #{e}"
end

api_instance = AmznSpApi::CatalogItemsApiModel::CatalogApi.new
marketplace_ids = ['marketplace_ids_example'] # Array<String> | A comma-delimited list of Amazon marketplace identifiers for the request.
opts = { 
  identifiers: ['identifiers_example'], # Array<String> | A comma-delimited list of product identifiers to search the Amazon catalog for. **Note:** Cannot be used with `keywords`.
  identifiers_type: 'identifiers_type_example', # String | Type of product identifiers to search the Amazon catalog for. **Note:** Required when `identifiers` are provided.
  included_data: ['included_data_example'], # Array<String> | A comma-delimited list of data sets to include in the response. Default: `summaries`.
  locale: 'locale_example', # String | Locale for retrieving localized summaries. Defaults to the primary locale of the marketplace.
  seller_id: 'seller_id_example', # String | A selling partner identifier, such as a seller account or vendor code. **Note:** Required when `identifiersType` is `SKU`.
  keywords: ['keywords_example'], # Array<String> | A comma-delimited list of words to search the Amazon catalog for. **Note:** Cannot be used with `identifiers`.
  brand_names: ['brand_names_example'], # Array<String> | A comma-delimited list of brand names to limit the search for `keywords`-based queries. **Note:** Cannot be used with `identifiers`.
  classification_ids: ['classification_ids_example'], # Array<String> | A comma-delimited list of classification identifiers to limit the search for `keywords`-based queries. **Note:** Cannot be used with `identifiers`.
  page_size: 10, # Integer | Number of results to be returned per page.
  page_token: 'page_token_example', # String | A token to fetch a certain page when there are multiple pages worth of results.
  keywords_locale: 'keywords_locale_example' # String | The language of the keywords provided for `keywords`-based queries. Defaults to the primary locale of the marketplace. **Note:** Cannot be used with `identifiers`.
}

begin
  result = api_instance.search_catalog_items(marketplace_ids, opts)
  p result
rescue AmznSpApi::CatalogItemsApiModel::ApiError => e
  puts "Exception when calling CatalogApi->search_catalog_items: #{e}"
end
```

## Documentation for API Endpoints

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AmznSpApi::CatalogItemsApiModel::CatalogApi* | [**get_catalog_item**](docs/CatalogApi.md#get_catalog_item) | **GET** /catalog/2022-04-01/items/{asin} | 
*AmznSpApi::CatalogItemsApiModel::CatalogApi* | [**search_catalog_items**](docs/CatalogApi.md#search_catalog_items) | **GET** /catalog/2022-04-01/items | 

## Documentation for Models

 - [AmznSpApi::CatalogItemsApiModel::BrandRefinement](docs/BrandRefinement.md)
 - [AmznSpApi::CatalogItemsApiModel::ClassificationRefinement](docs/ClassificationRefinement.md)
 - [AmznSpApi::CatalogItemsApiModel::Dimension](docs/Dimension.md)
 - [AmznSpApi::CatalogItemsApiModel::Dimensions](docs/Dimensions.md)
 - [AmznSpApi::CatalogItemsApiModel::Error](docs/Error.md)
 - [AmznSpApi::CatalogItemsApiModel::ErrorList](docs/ErrorList.md)
 - [AmznSpApi::CatalogItemsApiModel::Item](docs/Item.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemAsin](docs/ItemAsin.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemAttributes](docs/ItemAttributes.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemBrowseClassification](docs/ItemBrowseClassification.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemClassificationSalesRank](docs/ItemClassificationSalesRank.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemContributor](docs/ItemContributor.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemContributorRole](docs/ItemContributorRole.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemDimensions](docs/ItemDimensions.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemDimensionsByMarketplace](docs/ItemDimensionsByMarketplace.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemDisplayGroupSalesRank](docs/ItemDisplayGroupSalesRank.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemIdentifier](docs/ItemIdentifier.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemIdentifiers](docs/ItemIdentifiers.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemIdentifiersByMarketplace](docs/ItemIdentifiersByMarketplace.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemImage](docs/ItemImage.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemImages](docs/ItemImages.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemImagesByMarketplace](docs/ItemImagesByMarketplace.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemProductTypeByMarketplace](docs/ItemProductTypeByMarketplace.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemProductTypes](docs/ItemProductTypes.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemRelationship](docs/ItemRelationship.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemRelationships](docs/ItemRelationships.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemRelationshipsByMarketplace](docs/ItemRelationshipsByMarketplace.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemSalesRanks](docs/ItemSalesRanks.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemSalesRanksByMarketplace](docs/ItemSalesRanksByMarketplace.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemSearchResults](docs/ItemSearchResults.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemSummaries](docs/ItemSummaries.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemSummaryByMarketplace](docs/ItemSummaryByMarketplace.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemVariationTheme](docs/ItemVariationTheme.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemVendorDetails](docs/ItemVendorDetails.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemVendorDetailsByMarketplace](docs/ItemVendorDetailsByMarketplace.md)
 - [AmznSpApi::CatalogItemsApiModel::ItemVendorDetailsCategory](docs/ItemVendorDetailsCategory.md)
 - [AmznSpApi::CatalogItemsApiModel::Pagination](docs/Pagination.md)
 - [AmznSpApi::CatalogItemsApiModel::Refinements](docs/Refinements.md)

## Documentation for Authorization

 All endpoints do not require authorization.

