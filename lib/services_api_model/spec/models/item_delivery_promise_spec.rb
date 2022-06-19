=begin
#Selling Partner API for Services

#With the Services API, you can build applications that help service providers get and modify their service orders.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::ServicesApiModel::ItemDeliveryPromise
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ItemDeliveryPromise' do
  before do
    # run before each test
    @instance = AmznSpApi::ServicesApiModel::ItemDeliveryPromise.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ItemDeliveryPromise' do
    it 'should create an instance of ItemDeliveryPromise' do
      expect(@instance).to be_instance_of(AmznSpApi::ServicesApiModel::ItemDeliveryPromise)
    end
  end
  describe 'test attribute "start_time"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "end_time"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
