=begin
#Selling Partner API for Catalog Items

#The Selling Partner API for Catalog Items helps you programmatically retrieve item details for items in the catalog.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::CatalogItemsApiModel::ListCatalogCategoriesResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ListCatalogCategoriesResponse' do
  before do
    # run before each test
    @instance = AmznSpApi::CatalogItemsApiModel::ListCatalogCategoriesResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ListCatalogCategoriesResponse' do
    it 'should create an instance of ListCatalogCategoriesResponse' do
      expect(@instance).to be_instance_of(AmznSpApi::CatalogItemsApiModel::ListCatalogCategoriesResponse)
    end
  end
  describe 'test attribute "payload"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "errors"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
