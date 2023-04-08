# #Selling Partner API for FBA Inbound Eligibilty
#
# With the FBA Inbound Eligibility API, you can build applications that let sellers get eligibility previews for items before shipping them to Amazon's fulfillment centers. With this API you can find out if an item is eligible for inbound shipment to Amazon's fulfillment centers in a specific marketplace. You can also find out if an item is eligible for using the manufacturer barcode for FBA inventory tracking. Sellers can use this information to inform their decisions about which items to ship Amazon's fulfillment centers.
#
# OpenAPI spec version: v1
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 3.0.36

module AmznSpApi::FbaInboundEligibilityApiModel
  class FbaInboundApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # This operation gets an eligibility preview for an item that you specify. You can specify the type of eligibility preview that you want (INBOUND or COMMINGLING). For INBOUND previews, you can specify the marketplace in which you want to determine the item's eligibility.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param asin The ASIN of the item for which you want an eligibility preview.
    # @param program The program that you want to check eligibility against.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :marketplace_ids The identifier for the marketplace in which you want to determine eligibility. Required only when program&#x3D;INBOUND.
    # @return [GetItemEligibilityPreviewResponse]
    def get_item_eligibility_preview(asin, program, opts = {})
      data, _status_code, _headers = get_item_eligibility_preview_with_http_info(asin, program, opts)
      data
    end

    # This operation gets an eligibility preview for an item that you specify. You can specify the type of eligibility preview that you want (INBOUND or COMMINGLING). For INBOUND previews, you can specify the marketplace in which you want to determine the item&#x27;s eligibility.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  The &#x60;x-amzn-RateLimit-Limit&#x60; response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values than those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).
    # @param asin The ASIN of the item for which you want an eligibility preview.
    # @param program The program that you want to check eligibility against.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :marketplace_ids The identifier for the marketplace in which you want to determine eligibility. Required only when program&#x3D;INBOUND.
    # @return [Array<(GetItemEligibilityPreviewResponse, Integer, Hash)>] GetItemEligibilityPreviewResponse data, response status code and response headers
    def get_item_eligibility_preview_with_http_info(asin, program, opts = {})
      @api_client.config.logger.debug 'Calling API: FbaInboundApi.get_item_eligibility_preview ...' if @api_client.config.debugging
      # verify the required parameter 'asin' is set
      raise ArgumentError, "Missing the required parameter 'asin' when calling FbaInboundApi.get_item_eligibility_preview" if @api_client.config.client_side_validation && asin.nil?
      # verify the required parameter 'program' is set
      raise ArgumentError, "Missing the required parameter 'program' when calling FbaInboundApi.get_item_eligibility_preview" if @api_client.config.client_side_validation && program.nil?
      # verify enum value
      raise ArgumentError, "invalid value for 'program', must be one of INBOUND, COMMINGLING" if @api_client.config.client_side_validation && !%w[INBOUND COMMINGLING].include?(program)

      # resource path
      local_var_path = '/fba/inbound/v1/eligibility/itemPreview'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:asin] = asin
      query_params[:program] = program
      query_params[:marketplaceIds] = @api_client.build_collection_param(opts[:marketplace_ids], :csv) unless opts[:marketplace_ids].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'ItemEligibilityPreview'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body]

      return_type = opts[:return_type] || 'GetItemEligibilityPreviewResponse'

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: return_type)

      @api_client.config.logger.debug "API called: FbaInboundApi#get_item_eligibility_preview\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" if @api_client.config.debugging
      [data, status_code, headers]
    end
  end
end
