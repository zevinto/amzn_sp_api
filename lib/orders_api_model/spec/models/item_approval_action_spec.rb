=begin
#Selling Partner API for Orders

#The Selling Partner API for Orders helps you programmatically retrieve order information. These APIs let you develop fast, flexible, custom applications in areas like order synchronization, order research, and demand-based decision support tools.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.36
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::OrdersApiModel::ItemApprovalAction
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ItemApprovalAction' do
  before do
    # run before each test
    @instance = AmznSpApi::OrdersApiModel::ItemApprovalAction.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ItemApprovalAction' do
    it 'should create an instance of ItemApprovalAction' do
      expect(@instance).to be_instance_of(AmznSpApi::OrdersApiModel::ItemApprovalAction)
    end
  end
  describe 'test attribute "action_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["APPROVE", "DECLINE", "APPROVE_WITH_CHANGES"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.action_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "comment"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "changes"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
