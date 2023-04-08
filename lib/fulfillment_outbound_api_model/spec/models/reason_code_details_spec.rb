# #Selling Partner APIs for Fulfillment Outbound
#
# The Selling Partner API for Fulfillment Outbound lets you create applications that help a seller fulfill Multi-Channel Fulfillment orders using their inventory in Amazon's fulfillment network. You can get information on both potential and existing fulfillment orders.
#
# OpenAPI spec version: 2020-07-01
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 3.0.36

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::FulfillmentOutboundApiModel::ReasonCodeDetails
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ReasonCodeDetails' do
  before do
    # run before each test
    @instance = AmznSpApi::FulfillmentOutboundApiModel::ReasonCodeDetails.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReasonCodeDetails' do
    it 'should create an instance of ReasonCodeDetails' do
      expect(@instance).to be_instance_of(AmznSpApi::FulfillmentOutboundApiModel::ReasonCodeDetails)
    end
  end
  describe 'test attribute "return_reason_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "description"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "translated_description"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
end
