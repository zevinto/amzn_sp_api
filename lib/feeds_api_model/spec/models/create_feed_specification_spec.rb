# #Selling Partner API for Feeds
#
# The Selling Partner API for Feeds lets you upload data to Amazon on behalf of a selling partner.
#
# OpenAPI spec version: 2021-06-30
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 3.0.36

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::FeedsApiModel::CreateFeedSpecification
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CreateFeedSpecification' do
  before do
    # run before each test
    @instance = AmznSpApi::FeedsApiModel::CreateFeedSpecification.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreateFeedSpecification' do
    it 'should create an instance of CreateFeedSpecification' do
      expect(@instance).to be_instance_of(AmznSpApi::FeedsApiModel::CreateFeedSpecification)
    end
  end
  describe 'test attribute "feed_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "marketplace_ids"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "input_feed_document_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "feed_options"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
end
