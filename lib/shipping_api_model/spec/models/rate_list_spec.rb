# #Selling Partner API for Shipping
#
# Provides programmatic access to Amazon Shipping APIs.   **Note:** If you are new to the Amazon Shipping API, refer to the latest version of <a href=\"https://developer-docs.amazon.com/amazon-shipping/docs/shipping-api-v2-reference\">Amazon Shipping API (v2)</a> on the <a href=\"https://developer-docs.amazon.com/amazon-shipping/\">Amazon Shipping Developer Documentation</a> site.
#
# OpenAPI spec version: v1
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 3.0.36

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::ShippingApiModel::RateList
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RateList' do
  before do
    # run before each test
    @instance = AmznSpApi::ShippingApiModel::RateList.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RateList' do
    it 'should create an instance of RateList' do
      expect(@instance).to be_instance_of(AmznSpApi::ShippingApiModel::RateList)
    end
  end
end
