=begin
#Selling Partner API for Product Fees

#The Selling Partner API for Product Fees lets you programmatically retrieve estimated fees for a product. You can then account for those fees in your pricing.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.36
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::ProductFeesApiModel::FeesEstimateByIdRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FeesEstimateByIdRequest' do
  before do
    # run before each test
    @instance = AmznSpApi::ProductFeesApiModel::FeesEstimateByIdRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeesEstimateByIdRequest' do
    it 'should create an instance of FeesEstimateByIdRequest' do
      expect(@instance).to be_instance_of(AmznSpApi::ProductFeesApiModel::FeesEstimateByIdRequest)
    end
  end
  describe 'test attribute "fees_estimate_request"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "id_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "id_value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
