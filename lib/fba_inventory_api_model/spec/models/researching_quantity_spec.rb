=begin
#Selling Partner API for FBA Inventory

#The Selling Partner API for FBA Inventory lets you programmatically retrieve information about inventory in Amazon's fulfillment network.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::FbaInventoryApiModel::ResearchingQuantity
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ResearchingQuantity' do
  before do
    # run before each test
    @instance = AmznSpApi::FbaInventoryApiModel::ResearchingQuantity.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ResearchingQuantity' do
    it 'should create an instance of ResearchingQuantity' do
      expect(@instance).to be_instance_of(AmznSpApi::FbaInventoryApiModel::ResearchingQuantity)
    end
  end
  describe 'test attribute "total_researching_quantity"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "researching_quantity_breakdown"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end