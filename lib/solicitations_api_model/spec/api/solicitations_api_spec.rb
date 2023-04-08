# #Selling Partner API for Solicitations
#
# With the Solicitations API you can build applications that send non-critical solicitations to buyers. You can get a list of solicitation types that are available for an order that you specify, then call an operation that sends a solicitation to the buyer for that order. Buyers cannot respond to solicitations sent by this API, and these solicitations do not appear in the Messaging section of Seller Central or in the recipient's Message Center. The Solicitations API returns responses that are formed according to the <a href=https://tools.ietf.org/html/draft-kelly-json-hal-08>JSON Hypertext Application Language</a> (HAL) standard.
#
# OpenAPI spec version: v1
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 3.0.36

require 'spec_helper'
require 'json'

# Unit tests for AmznSpApi::SolicitationsApiModel::SolicitationsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SolicitationsApi' do
  before do
    # run before each test
    @instance = AmznSpApi::SolicitationsApiModel::SolicitationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SolicitationsApi' do
    it 'should create an instance of SolicitationsApi' do
      expect(@instance).to be_instance_of(AmznSpApi::SolicitationsApiModel::SolicitationsApi)
    end
  end

  # unit tests for create_product_review_and_seller_feedback_solicitation
  # Sends a solicitation to a buyer asking for seller feedback and a product review for the specified order. Send only one productReviewAndSellerFeedback or free form proactive message per order.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
  # @param amazon_order_id An Amazon order identifier. This specifies the order for which a solicitation is sent.
  # @param marketplace_ids A marketplace identifier. This specifies the marketplace in which the order was placed. Only one marketplace can be specified.
  # @param [Hash] opts the optional parameters
  # @return [CreateProductReviewAndSellerFeedbackSolicitationResponse]
  describe 'create_product_review_and_seller_feedback_solicitation test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_solicitation_actions_for_order
  # Returns a list of solicitation types that are available for an order that you specify. A solicitation type is represented by an actions object, which contains a path and query parameter(s). You can use the path and parameter(s) to call an operation that sends a solicitation. Currently only the productReviewAndSellerFeedbackSolicitation solicitation type is available.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
  # @param amazon_order_id An Amazon order identifier. This specifies the order for which you want a list of available solicitation types.
  # @param marketplace_ids A marketplace identifier. This specifies the marketplace in which the order was placed. Only one marketplace can be specified.
  # @param [Hash] opts the optional parameters
  # @return [GetSolicitationActionsForOrderResponse]
  describe 'get_solicitation_actions_for_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
end
