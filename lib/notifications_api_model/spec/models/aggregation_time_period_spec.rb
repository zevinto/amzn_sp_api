# #Selling Partner API for Notifications
#
# The Selling Partner API for Notifications lets you subscribe to notifications that are relevant to a selling partner's business. Using this API you can create a destination to receive notifications, subscribe to notifications, delete notification subscriptions, and more.  For more information, see the [Notifications Use Case Guide](doc:notifications-api-v1-use-case-guide).
#
# OpenAPI spec version: v1
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 3.0.36

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::NotificationsApiModel::AggregationTimePeriod
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AggregationTimePeriod' do
  before do
    # run before each test
    @instance = AmznSpApi::NotificationsApiModel::AggregationTimePeriod.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AggregationTimePeriod' do
    it 'should create an instance of AggregationTimePeriod' do
      expect(@instance).to be_instance_of(AmznSpApi::NotificationsApiModel::AggregationTimePeriod)
    end
  end
end
