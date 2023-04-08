=begin
#Selling Partner API for Services

#With the Services API, you can build applications that help service providers get and modify their service orders and manage their resources.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.36
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmznSpApi::ServicesApiModel::ServiceDocumentUploadDestination
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ServiceDocumentUploadDestination' do
  before do
    # run before each test
    @instance = AmznSpApi::ServicesApiModel::ServiceDocumentUploadDestination.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ServiceDocumentUploadDestination' do
    it 'should create an instance of ServiceDocumentUploadDestination' do
      expect(@instance).to be_instance_of(AmznSpApi::ServicesApiModel::ServiceDocumentUploadDestination)
    end
  end
  describe 'test attribute "upload_destination_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "url"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "encryption_details"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "headers"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end