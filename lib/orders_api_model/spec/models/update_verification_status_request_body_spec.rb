# #Selling Partner API for Orders
#
# The Selling Partner API for Orders helps you programmatically retrieve order information. These APIs let you develop fast, flexible, custom applications in areas like order synchronization, order research, and demand-based decision support tools.
#
# OpenAPI spec version: v0
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 3.0.36

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::OrdersApiModel::UpdateVerificationStatusRequestBody
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UpdateVerificationStatusRequestBody' do
  before do
    # run before each test
    @instance = AmznSpApi::OrdersApiModel::UpdateVerificationStatusRequestBody.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UpdateVerificationStatusRequestBody' do
    it 'should create an instance of UpdateVerificationStatusRequestBody' do
      expect(@instance).to be_instance_of(AmznSpApi::OrdersApiModel::UpdateVerificationStatusRequestBody)
    end
  end
  describe 'test attribute "status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "external_reviewer_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "rejection_reason_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
end
