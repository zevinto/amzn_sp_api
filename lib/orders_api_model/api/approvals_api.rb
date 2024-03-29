# #Selling Partner API for Orders
#
# The Selling Partner API for Orders helps you programmatically retrieve order information. These APIs let you develop fast, flexible, custom applications in areas like order synchronization, order research, and demand-based decision support tools.
#
# OpenAPI spec version: v0
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 3.0.36

module AmznSpApi::OrdersApiModel
  class ApprovalsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Returns detailed order items approvals information for the order specified. If NextToken is provided, it's used to retrieve the next page of order items approvals.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 0.5 | 30 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param order_id An Amazon-defined order identifier, in 3-7-7 format, e.g. 933-1671587-0818628.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_token A string token returned in the response of your previous request.
    # @option opts [Array<ItemApprovalType>] :item_approval_types When set, only return approvals for items which approval type is contained in the specified approval types.
    # @option opts [Array<ItemApprovalStatus>] :item_approval_status When set, only return approvals that contain items which approval status is contained in the specified approval status.
    # @return [GetOrderApprovalsResponse]
    def get_order_items_approvals(order_id, opts = {})
      data, _status_code, _headers = get_order_items_approvals_with_http_info(order_id, opts)
      data
    end

    # Returns detailed order items approvals information for the order specified. If NextToken is provided, it&#x27;s used to retrieve the next page of order items approvals.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 0.5 | 30 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param order_id An Amazon-defined order identifier, in 3-7-7 format, e.g. 933-1671587-0818628.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_token A string token returned in the response of your previous request.
    # @option opts [Array<ItemApprovalType>] :item_approval_types When set, only return approvals for items which approval type is contained in the specified approval types.
    # @option opts [Array<ItemApprovalStatus>] :item_approval_status When set, only return approvals that contain items which approval status is contained in the specified approval status.
    # @return [Array<(GetOrderApprovalsResponse, Integer, Hash)>] GetOrderApprovalsResponse data, response status code and response headers
    def get_order_items_approvals_with_http_info(order_id, opts = {})
      @api_client.config.logger.debug 'Calling API: ApprovalsApi.get_order_items_approvals ...' if @api_client.config.debugging
      # verify the required parameter 'order_id' is set
      raise ArgumentError, "Missing the required parameter 'order_id' when calling ApprovalsApi.get_order_items_approvals" if @api_client.config.client_side_validation && order_id.nil?

      # resource path
      local_var_path = '/orders/v0/orders/{orderId}/approvals'.sub('{' + 'orderId' + '}', order_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:NextToken] = opts[:next_token] unless opts[:next_token].nil?
      query_params[:ItemApprovalTypes] = @api_client.build_collection_param(opts[:item_approval_types], :csv) unless opts[:item_approval_types].nil?
      query_params[:ItemApprovalStatus] = @api_client.build_collection_param(opts[:item_approval_status], :csv) unless opts[:item_approval_status].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      return_type = opts[:return_type] || 'GetOrderApprovalsResponse'

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: return_type)

      @api_client.config.logger.debug "API called: ApprovalsApi#get_order_items_approvals\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" if @api_client.config.debugging
      [data, status_code, headers]
    end

    # Update the order items approvals for an order that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 15 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).
    # @param body The request body for the updateOrderItemsApprovals operation.
    # @param order_id An Amazon-defined order identifier, in 3-7-7 format.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_order_items_approvals(body, order_id, opts = {})
      update_order_items_approvals_with_http_info(body, order_id, opts)
      nil
    end

    # Update the order items approvals for an order that you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 15 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](doc:usage-plans-and-rate-limits-in-the-sp-api).
    # @param body The request body for the updateOrderItemsApprovals operation.
    # @param order_id An Amazon-defined order identifier, in 3-7-7 format.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_order_items_approvals_with_http_info(body, order_id, opts = {})
      @api_client.config.logger.debug 'Calling API: ApprovalsApi.update_order_items_approvals ...' if @api_client.config.debugging
      # verify the required parameter 'body' is set
      raise ArgumentError, "Missing the required parameter 'body' when calling ApprovalsApi.update_order_items_approvals" if @api_client.config.client_side_validation && body.nil?
      # verify the required parameter 'order_id' is set
      raise ArgumentError, "Missing the required parameter 'order_id' when calling ApprovalsApi.update_order_items_approvals" if @api_client.config.client_side_validation && order_id.nil?

      # resource path
      local_var_path = '/orders/v0/orders/{orderId}/approvals'.sub('{' + 'orderId' + '}', order_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body)

      return_type = opts[:return_type]

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: return_type)

      @api_client.config.logger.debug "API called: ApprovalsApi#update_order_items_approvals\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" if @api_client.config.debugging
      [data, status_code, headers]
    end
  end
end
