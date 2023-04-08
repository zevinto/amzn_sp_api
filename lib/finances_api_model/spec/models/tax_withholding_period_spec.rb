# #Selling Partner API for Finances
#
# The Selling Partner API for Finances helps you obtain financial information relevant to a seller's business. You can obtain financial events for a given order, financial event group, or date range without having to wait until a statement period closes. You can also obtain financial event groups for a given date range.
#
# OpenAPI spec version: v0
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 3.0.36

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::FinancesApiModel::TaxWithholdingPeriod
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TaxWithholdingPeriod' do
  before do
    # run before each test
    @instance = AmznSpApi::FinancesApiModel::TaxWithholdingPeriod.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TaxWithholdingPeriod' do
    it 'should create an instance of TaxWithholdingPeriod' do
      expect(@instance).to be_instance_of(AmznSpApi::FinancesApiModel::TaxWithholdingPeriod)
    end
  end
  describe 'test attribute "start_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "end_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
end
