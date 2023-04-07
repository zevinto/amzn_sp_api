=begin
#Selling Partner API for Catalog Items

#The Selling Partner API for Catalog Items provides programmatic access to information about items in the Amazon catalog.  For more information, refer to the [Catalog Items API Use Case Guide](doc:catalog-items-api-v2022-04-01-use-case-guide).

OpenAPI spec version: 2022-04-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.36
=end

# Common files
require 'catalog_items_api_model/api_client'
require 'catalog_items_api_model/api_error'
require 'catalog_items_api_model/version'
require 'catalog_items_api_model/configuration'

# Models
require 'catalog_items_api_model/models/brand_refinement'
require 'catalog_items_api_model/models/classification_refinement'
require 'catalog_items_api_model/models/dimension'
require 'catalog_items_api_model/models/dimensions'
require 'catalog_items_api_model/models/error'
require 'catalog_items_api_model/models/error_list'
require 'catalog_items_api_model/models/item'
require 'catalog_items_api_model/models/item_asin'
require 'catalog_items_api_model/models/item_attributes'
require 'catalog_items_api_model/models/item_browse_classification'
require 'catalog_items_api_model/models/item_classification_sales_rank'
require 'catalog_items_api_model/models/item_contributor'
require 'catalog_items_api_model/models/item_contributor_role'
require 'catalog_items_api_model/models/item_dimensions'
require 'catalog_items_api_model/models/item_dimensions_by_marketplace'
require 'catalog_items_api_model/models/item_display_group_sales_rank'
require 'catalog_items_api_model/models/item_identifier'
require 'catalog_items_api_model/models/item_identifiers'
require 'catalog_items_api_model/models/item_identifiers_by_marketplace'
require 'catalog_items_api_model/models/item_image'
require 'catalog_items_api_model/models/item_images'
require 'catalog_items_api_model/models/item_images_by_marketplace'
require 'catalog_items_api_model/models/item_product_type_by_marketplace'
require 'catalog_items_api_model/models/item_product_types'
require 'catalog_items_api_model/models/item_relationship'
require 'catalog_items_api_model/models/item_relationships'
require 'catalog_items_api_model/models/item_relationships_by_marketplace'
require 'catalog_items_api_model/models/item_sales_ranks'
require 'catalog_items_api_model/models/item_sales_ranks_by_marketplace'
require 'catalog_items_api_model/models/item_search_results'
require 'catalog_items_api_model/models/item_summaries'
require 'catalog_items_api_model/models/item_summary_by_marketplace'
require 'catalog_items_api_model/models/item_variation_theme'
require 'catalog_items_api_model/models/item_vendor_details'
require 'catalog_items_api_model/models/item_vendor_details_by_marketplace'
require 'catalog_items_api_model/models/item_vendor_details_category'
require 'catalog_items_api_model/models/pagination'
require 'catalog_items_api_model/models/refinements'

# APIs
require 'catalog_items_api_model/api/catalog_api'

module AmznSpApi::CatalogItemsApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmznSpApi::CatalogItemsApiModel.configure do |config|
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
