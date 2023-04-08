# #Selling Partner API for Fulfillment Inbound
#
# The Selling Partner API for Fulfillment Inbound lets you create applications that create and update inbound shipments of inventory to Amazon's fulfillment network.
#
# OpenAPI spec version: v0
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 3.0.36

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::FulfillmentInboundApiModel::InboundShipmentPlanRequestItem
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InboundShipmentPlanRequestItem' do
  before do
    # run before each test
    @instance = AmznSpApi::FulfillmentInboundApiModel::InboundShipmentPlanRequestItem.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InboundShipmentPlanRequestItem' do
    it 'should create an instance of InboundShipmentPlanRequestItem' do
      expect(@instance).to be_instance_of(AmznSpApi::FulfillmentInboundApiModel::InboundShipmentPlanRequestItem)
    end
  end
  describe 'test attribute "seller_sku"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "asin"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "condition"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "quantity"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "quantity_in_case"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "prep_details_list"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
end
