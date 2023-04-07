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

# Unit tests for AmznSpApi::MerchantFulfillmentApiModel::ShippingOfferingFilter
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ShippingOfferingFilter' do
  before do
    # run before each test
    @instance = AmznSpApi::MerchantFulfillmentApiModel::ShippingOfferingFilter.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ShippingOfferingFilter' do
    it 'should create an instance of ShippingOfferingFilter' do
      expect(@instance).to be_instance_of(AmznSpApi::MerchantFulfillmentApiModel::ShippingOfferingFilter)
    end
  end
  describe 'test attribute "include_packing_slip_with_label"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "include_complex_shipping_options"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "carrier_will_pick_up"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "delivery_experience"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
