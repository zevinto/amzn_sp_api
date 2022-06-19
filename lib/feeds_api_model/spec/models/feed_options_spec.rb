=begin
#Selling Partner API for Feeds

#The Selling Partner API for Feeds lets you upload data to Amazon on behalf of a selling partner.

OpenAPI spec version: 2021-06-30

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::FeedsApiModel::FeedOptions
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FeedOptions' do
  before do
    # run before each test
    @instance = AmznSpApi::FeedsApiModel::FeedOptions.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeedOptions' do
    it 'should create an instance of FeedOptions' do
      expect(@instance).to be_instance_of(AmznSpApi::FeedsApiModel::FeedOptions)
    end
  end
end
