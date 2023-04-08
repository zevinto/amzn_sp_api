# #Selling Partner API for Product Fees
#
# The Selling Partner API for Product Fees lets you programmatically retrieve estimated fees for a product. You can then account for those fees in your pricing.
#
# OpenAPI spec version: v0
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 3.0.36

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::ProductFeesApiModel::FeesEstimateRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FeesEstimateRequest' do
  before do
    # run before each test
    @instance = AmznSpApi::ProductFeesApiModel::FeesEstimateRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeesEstimateRequest' do
    it 'should create an instance of FeesEstimateRequest' do
      expect(@instance).to be_instance_of(AmznSpApi::ProductFeesApiModel::FeesEstimateRequest)
    end
  end
  describe 'test attribute "marketplace_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "is_amazon_fulfilled"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "price_to_estimate_fees"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "identifier"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "optional_fulfillment_program"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
end
