# #Selling Partner API for Authorization
#
# The Selling Partner API for Authorization helps developers manage authorizations and check the specific permissions associated with a given authorization.
#
# OpenAPI spec version: v1
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 3.0.36

require 'spec_helper'
require 'json'

# Unit tests for AmznSpApi::AuthorizationApiModel::AuthorizationApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuthorizationApi' do
  before do
    # run before each test
    @instance = AmznSpApi::AuthorizationApiModel::AuthorizationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthorizationApi' do
    it 'should create an instance of AuthorizationApi' do
      expect(@instance).to be_instance_of(AmznSpApi::AuthorizationApiModel::AuthorizationApi)
    end
  end

  # unit tests for get_authorization_code
  # Returns the Login with Amazon (LWA) authorization code for an existing Amazon MWS authorization.
  # With the getAuthorizationCode operation, you can request a Login With Amazon (LWA) authorization code that will allow you to call a Selling Partner API on behalf of a seller who has already authorized you to call Amazon Marketplace Web Service (Amazon MWS). You specify a developer ID, an MWS auth token, and a seller ID. Taken together, these represent the Amazon MWS authorization that the seller previously granted you. The operation returns an LWA authorization code that can be exchanged for a refresh token and access token representing authorization to call the Selling Partner API on the seller&#x27;s behalf. By using this API, sellers who have already authorized you for Amazon MWS do not need to re-authorize you for the Selling Partner API.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param selling_partner_id The seller ID of the seller for whom you are requesting Selling Partner API authorization. This must be the seller ID of the seller who authorized your application on the Marketplace Appstore.
  # @param developer_id Your developer ID. This must be one of the developer ID values that you provided when you registered your application in Developer Central.
  # @param mws_auth_token The MWS Auth Token that was generated when the seller authorized your application on the Marketplace Appstore.
  # @param [Hash] opts the optional parameters
  # @return [GetAuthorizationCodeResponse]
  describe 'get_authorization_code test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
end
