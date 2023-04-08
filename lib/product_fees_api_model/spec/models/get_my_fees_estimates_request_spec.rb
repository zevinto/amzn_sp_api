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

# Unit tests for AmznSpApi::ProductFeesApiModel::GetMyFeesEstimatesRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetMyFeesEstimatesRequest' do
  before do
    # run before each test
    @instance = AmznSpApi::ProductFeesApiModel::GetMyFeesEstimatesRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetMyFeesEstimatesRequest' do
    it 'should create an instance of GetMyFeesEstimatesRequest' do
      expect(@instance).to be_instance_of(AmznSpApi::ProductFeesApiModel::GetMyFeesEstimatesRequest)
    end
  end
end
