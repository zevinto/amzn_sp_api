=begin
#Selling Partner API for Merchant Fulfillment

#The Selling Partner API for Merchant Fulfillment helps you build applications that let sellers purchase shipping for non-Prime and Prime orders using Amazon’s Buy Shipping Services.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::MerchantFulfillmentApiModel::ShippingServiceList
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ShippingServiceList' do
  before do
    # run before each test
    @instance = AmznSpApi::MerchantFulfillmentApiModel::ShippingServiceList.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ShippingServiceList' do
    it 'should create an instance of ShippingServiceList' do
      expect(@instance).to be_instance_of(AmznSpApi::MerchantFulfillmentApiModel::ShippingServiceList)
    end
  end
end
