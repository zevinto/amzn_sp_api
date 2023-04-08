# #Selling Partner API for Shipment Invoicing
#
# The Selling Partner API for Shipment Invoicing helps you programmatically retrieve shipment invoice information in the Brazil marketplace for a selling partner’s Fulfillment by Amazon (FBA) orders.
#
# OpenAPI spec version: v0
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 3.0.36

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::ShipmentInvoicingApiModel::GetInvoiceStatusResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetInvoiceStatusResponse' do
  before do
    # run before each test
    @instance = AmznSpApi::ShipmentInvoicingApiModel::GetInvoiceStatusResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetInvoiceStatusResponse' do
    it 'should create an instance of GetInvoiceStatusResponse' do
      expect(@instance).to be_instance_of(AmznSpApi::ShipmentInvoicingApiModel::GetInvoiceStatusResponse)
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
