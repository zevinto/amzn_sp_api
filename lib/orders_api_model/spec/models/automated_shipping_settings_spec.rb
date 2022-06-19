=begin
#Selling Partner API for Orders

#The Selling Partner API for Orders helps you programmatically retrieve order information. These APIs let you develop fast, flexible, custom applications in areas like order synchronization, order research, and demand-based decision support tools.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::OrdersApiModel::AutomatedShippingSettings
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AutomatedShippingSettings' do
  before do
    # run before each test
    @instance = AmznSpApi::OrdersApiModel::AutomatedShippingSettings.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AutomatedShippingSettings' do
    it 'should create an instance of AutomatedShippingSettings' do
      expect(@instance).to be_instance_of(AmznSpApi::OrdersApiModel::AutomatedShippingSettings)
    end
  end
  describe 'test attribute "has_automated_shipping_settings"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "automated_carrier"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "automated_ship_method"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
