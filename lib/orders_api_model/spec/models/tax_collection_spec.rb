# #Selling Partner API for Orders
#
# The Selling Partner API for Orders helps you programmatically retrieve order information. These APIs let you develop fast, flexible, custom applications in areas like order synchronization, order research, and demand-based decision support tools.
#
# OpenAPI spec version: v0
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 3.0.36

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::OrdersApiModel::TaxCollection
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TaxCollection' do
  before do
    # run before each test
    @instance = AmznSpApi::OrdersApiModel::TaxCollection.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TaxCollection' do
    it 'should create an instance of TaxCollection' do
      expect(@instance).to be_instance_of(AmznSpApi::OrdersApiModel::TaxCollection)
    end
  end
  describe 'test attribute "model"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["MarketplaceFacilitator"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.model = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "responsible_party"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Amazon Services, Inc."])
      # validator.allowable_values.each do |value|
      #   expect { @instance.responsible_party = value }.not_to raise_error
      # end
    end
  end
end
