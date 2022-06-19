=begin
#Selling Partner API for Messaging

#With the Messaging API you can build applications that send messages to buyers. You can get a list of message types that are available for an order that you specify, then call an operation that sends a message to the buyer for that order. The Messaging API returns responses that are formed according to the <a href=https://tools.ietf.org/html/draft-kelly-json-hal-08>JSON Hypertext Application Language</a> (HAL) standard.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::MessagingApiModel::GetMessagingActionsForOrderResponseEmbedded
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetMessagingActionsForOrderResponseEmbedded' do
  before do
    # run before each test
    @instance = AmznSpApi::MessagingApiModel::GetMessagingActionsForOrderResponseEmbedded.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetMessagingActionsForOrderResponseEmbedded' do
    it 'should create an instance of GetMessagingActionsForOrderResponseEmbedded' do
      expect(@instance).to be_instance_of(AmznSpApi::MessagingApiModel::GetMessagingActionsForOrderResponseEmbedded)
    end
  end
  describe 'test attribute "actions"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
