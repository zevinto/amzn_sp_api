=begin
#Selling Partner API for Finances

#The Selling Partner API for Finances helps you obtain financial information relevant to a seller's business. You can obtain financial events for a given order, financial event group, or date range without having to wait until a statement period closes. You can also obtain financial event groups for a given date range.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.36
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::FinancesApiModel::SAFETReimbursementItem
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SAFETReimbursementItem' do
  before do
    # run before each test
    @instance = AmznSpApi::FinancesApiModel::SAFETReimbursementItem.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SAFETReimbursementItem' do
    it 'should create an instance of SAFETReimbursementItem' do
      expect(@instance).to be_instance_of(AmznSpApi::FinancesApiModel::SAFETReimbursementItem)
    end
  end
  describe 'test attribute "item_charge_list"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "product_description"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "quantity"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
