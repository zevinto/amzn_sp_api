=begin
#Selling Partner API for Catalog Items

#The Selling Partner API for Catalog Items provides programmatic access to information about items in the Amazon catalog.  For more information, refer to the [Catalog Items API Use Case Guide](doc:catalog-items-api-v2022-04-01-use-case-guide).

OpenAPI spec version: 2022-04-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.36
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::CatalogItemsApiModel::ItemRelationshipsByMarketplace
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ItemRelationshipsByMarketplace' do
  before do
    # run before each test
    @instance = AmznSpApi::CatalogItemsApiModel::ItemRelationshipsByMarketplace.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ItemRelationshipsByMarketplace' do
    it 'should create an instance of ItemRelationshipsByMarketplace' do
      expect(@instance).to be_instance_of(AmznSpApi::CatalogItemsApiModel::ItemRelationshipsByMarketplace)
    end
  end
  describe 'test attribute "marketplace_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "relationships"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
