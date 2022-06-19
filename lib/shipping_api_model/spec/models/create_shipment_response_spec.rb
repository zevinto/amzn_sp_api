=begin
#Selling Partner API for Shipping

#Provides programmatic access to Amazon Shipping APIs.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::ShippingApiModel::CreateShipmentResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CreateShipmentResponse' do
  before do
    # run before each test
    @instance = AmznSpApi::ShippingApiModel::CreateShipmentResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreateShipmentResponse' do
    it 'should create an instance of CreateShipmentResponse' do
      expect(@instance).to be_instance_of(AmznSpApi::ShippingApiModel::CreateShipmentResponse)
    end
  end
  describe 'test attribute "payload"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "errors"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
