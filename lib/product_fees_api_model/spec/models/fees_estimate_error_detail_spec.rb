=begin
#Selling Partner API for Product Fees

#The Selling Partner API for Product Fees lets you programmatically retrieve estimated fees for a product. You can then account for those fees in your pricing.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::ProductFeesApiModel::FeesEstimateErrorDetail
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FeesEstimateErrorDetail' do
  before do
    # run before each test
    @instance = AmznSpApi::ProductFeesApiModel::FeesEstimateErrorDetail.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeesEstimateErrorDetail' do
    it 'should create an instance of FeesEstimateErrorDetail' do
      expect(@instance).to be_instance_of(AmznSpApi::ProductFeesApiModel::FeesEstimateErrorDetail)
    end
  end
end
