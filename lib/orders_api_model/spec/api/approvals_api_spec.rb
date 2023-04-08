=begin
#Selling Partner API for Orders

#The Selling Partner API for Orders helps you programmatically retrieve order information. These APIs let you develop fast, flexible, custom applications in areas like order synchronization, order research, and demand-based decision support tools.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.36
=end

require 'spec_helper'
require 'json'

# Unit tests for AmznSpApi::OrdersApiModel::ApprovalsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ApprovalsApi' do
  before do
    # run before each test
    @instance = AmznSpApi::OrdersApiModel::ApprovalsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ApprovalsApi' do
    it 'should create an instance of ApprovalsApi' do
      expect(@instance).to be_instance_of(AmznSpApi::OrdersApiModel::ApprovalsApi)
    end
  end

  # unit tests for get_order_items_approvals
  # Returns detailed order items approvals information for the order specified. If NextToken is provided, it&#x27;s used to retrieve the next page of order items approvals.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 0.5 | 30 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param order_id An Amazon-defined order identifier, in 3-7-7 format, e.g. 933-1671587-0818628.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :next_token A string token returned in the response of your previous request.
  # @option opts [Array<ItemApprovalType>] :item_approval_types When set, only return approvals for items which approval type is contained in the specified approval types.
  # @option opts [Array<ItemApprovalStatus>] :item_approval_status When set, only return approvals that contain items which approval status is contained in the specified approval status.
  # @return [GetOrderApprovalsResponse]
  describe 'get_order_items_approvals test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_order_items_approvals
  # Update the order items approvals for an order that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 15 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).
  # @param body The request body for the updateOrderItemsApprovals operation.
  # @param order_id An Amazon-defined order identifier, in 3-7-7 format.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_order_items_approvals test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end