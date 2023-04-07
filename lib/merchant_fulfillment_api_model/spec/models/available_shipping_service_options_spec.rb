=begin
#Selling Partner API for Merchant Fulfillment

#The Selling Partner API for Merchant Fulfillment helps you build applications that let sellers purchase shipping for non-Prime and Prime orders using Amazon’s Buy Shipping Services.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.36
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::MerchantFulfillmentApiModel::AvailableShippingServiceOptions
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AvailableShippingServiceOptions' do
  before do
    # run before each test
    @instance = AmznSpApi::MerchantFulfillmentApiModel::AvailableShippingServiceOptions.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AvailableShippingServiceOptions' do
    it 'should create an instance of AvailableShippingServiceOptions' do
      expect(@instance).to be_instance_of(AmznSpApi::MerchantFulfillmentApiModel::AvailableShippingServiceOptions)
    end
  end
  describe 'test attribute "available_carrier_will_pick_up_options"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "available_delivery_experience_options"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
