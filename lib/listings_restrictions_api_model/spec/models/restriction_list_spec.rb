# #Selling Partner API for Listings Restrictions
#
# The Selling Partner API for Listings Restrictions provides programmatic access to restrictions on Amazon catalog listings.  For more information, see the [Listings Restrictions API Use Case Guide](doc:listings-restrictions-api-v2021-08-01-use-case-guide).
#
# OpenAPI spec version: 2021-08-01
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 3.0.36

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::ListingsRestrictionsApiModel::RestrictionList
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RestrictionList' do
  before do
    # run before each test
    @instance = AmznSpApi::ListingsRestrictionsApiModel::RestrictionList.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RestrictionList' do
    it 'should create an instance of RestrictionList' do
      expect(@instance).to be_instance_of(AmznSpApi::ListingsRestrictionsApiModel::RestrictionList)
    end
  end
  describe 'test attribute "restrictions"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
end
