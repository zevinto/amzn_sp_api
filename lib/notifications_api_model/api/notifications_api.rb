=begin
#Selling Partner API for Notifications

#The Selling Partner API for Notifications lets you subscribe to notifications that are relevant to a selling partner's business. Using this API you can create a destination to receive notifications, subscribe to notifications, delete notification subscriptions, and more.  For more information, see the [Notifications Use Case Guide](doc:notifications-api-v1-use-case-guide)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

module AmznSpApi::NotificationsApiModel
  class NotificationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a destination resource to receive notifications. The createDestination API is grantless. For more information, see \"Grantless operations\" in the Selling Partner API Developer Guide.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [CreateDestinationResponse]
    def create_destination(body, opts = {})
      data, _status_code, _headers = create_destination_with_http_info(body, opts)
      data
    end

    # Creates a destination resource to receive notifications. The createDestination API is grantless. For more information, see \&quot;Grantless operations\&quot; in the Selling Partner API Developer Guide.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateDestinationResponse, Integer, Hash)>] CreateDestinationResponse data, response status code and response headers
    def create_destination_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotificationsApi.create_destination ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling NotificationsApi.create_destination"
      end
      # resource path
      local_var_path = '/notifications/v1/destinations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'Successful Response'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'CreateDestinationResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationsApi#create_destination\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Creates a subscription for the specified notification type to be delivered to the specified destination. Before you can subscribe, you must first create the destination by calling the createDestination operation.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param body 
    # @param notification_type The type of notification.   For more information about notification types, see [the Notifications API Use Case Guide](doc:notifications-api-v1-use-case-guide).
    # @param [Hash] opts the optional parameters
    # @return [CreateSubscriptionResponse]
    def create_subscription(body, notification_type, opts = {})
      data, _status_code, _headers = create_subscription_with_http_info(body, notification_type, opts)
      data
    end

    # Creates a subscription for the specified notification type to be delivered to the specified destination. Before you can subscribe, you must first create the destination by calling the createDestination operation.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param body 
    # @param notification_type The type of notification.   For more information about notification types, see [the Notifications API Use Case Guide](doc:notifications-api-v1-use-case-guide).
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateSubscriptionResponse, Integer, Hash)>] CreateSubscriptionResponse data, response status code and response headers
    def create_subscription_with_http_info(body, notification_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotificationsApi.create_subscription ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling NotificationsApi.create_subscription"
      end
      # verify the required parameter 'notification_type' is set
      if @api_client.config.client_side_validation && notification_type.nil?
        fail ArgumentError, "Missing the required parameter 'notification_type' when calling NotificationsApi.create_subscription"
      end
      # resource path
      local_var_path = '/notifications/v1/subscriptions/{notificationType}'.sub('{' + 'notificationType' + '}', notification_type.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'Successful Response'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'CreateSubscriptionResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationsApi#create_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes the destination that you specify. The deleteDestination API is grantless. For more information, see \"Grantless operations\" in the Selling Partner API Developer Guide.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param destination_id The identifier for the destination that you want to delete.
    # @param [Hash] opts the optional parameters
    # @return [DeleteDestinationResponse]
    def delete_destination(destination_id, opts = {})
      data, _status_code, _headers = delete_destination_with_http_info(destination_id, opts)
      data
    end

    # Deletes the destination that you specify. The deleteDestination API is grantless. For more information, see \&quot;Grantless operations\&quot; in the Selling Partner API Developer Guide.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param destination_id The identifier for the destination that you want to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteDestinationResponse, Integer, Hash)>] DeleteDestinationResponse data, response status code and response headers
    def delete_destination_with_http_info(destination_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotificationsApi.delete_destination ...'
      end
      # verify the required parameter 'destination_id' is set
      if @api_client.config.client_side_validation && destination_id.nil?
        fail ArgumentError, "Missing the required parameter 'destination_id' when calling NotificationsApi.delete_destination"
      end
      # resource path
      local_var_path = '/notifications/v1/destinations/{destinationId}'.sub('{' + 'destinationId' + '}', destination_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'Successful Response'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'DeleteDestinationResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationsApi#delete_destination\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes the subscription indicated by the subscription identifier and notification type that you specify. The subscription identifier can be for any subscription associated with your application. After you successfully call this operation, notifications will stop being sent for the associated subscription. The deleteSubscriptionById API is grantless. For more information, see \"Grantless operations\" in the Selling Partner API Developer Guide.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param subscription_id The identifier for the subscription that you want to delete.
    # @param notification_type The type of notification.   For more information about notification types, see [the Notifications API Use Case Guide](doc:notifications-api-v1-use-case-guide).
    # @param [Hash] opts the optional parameters
    # @return [DeleteSubscriptionByIdResponse]
    def delete_subscription_by_id(subscription_id, notification_type, opts = {})
      data, _status_code, _headers = delete_subscription_by_id_with_http_info(subscription_id, notification_type, opts)
      data
    end

    # Deletes the subscription indicated by the subscription identifier and notification type that you specify. The subscription identifier can be for any subscription associated with your application. After you successfully call this operation, notifications will stop being sent for the associated subscription. The deleteSubscriptionById API is grantless. For more information, see \&quot;Grantless operations\&quot; in the Selling Partner API Developer Guide.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param subscription_id The identifier for the subscription that you want to delete.
    # @param notification_type The type of notification.   For more information about notification types, see [the Notifications API Use Case Guide](doc:notifications-api-v1-use-case-guide).
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteSubscriptionByIdResponse, Integer, Hash)>] DeleteSubscriptionByIdResponse data, response status code and response headers
    def delete_subscription_by_id_with_http_info(subscription_id, notification_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotificationsApi.delete_subscription_by_id ...'
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling NotificationsApi.delete_subscription_by_id"
      end
      # verify the required parameter 'notification_type' is set
      if @api_client.config.client_side_validation && notification_type.nil?
        fail ArgumentError, "Missing the required parameter 'notification_type' when calling NotificationsApi.delete_subscription_by_id"
      end
      # resource path
      local_var_path = '/notifications/v1/subscriptions/{notificationType}/{subscriptionId}'.sub('{' + 'subscriptionId' + '}', subscription_id.to_s).sub('{' + 'notificationType' + '}', notification_type.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'Successful Operation Response'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'DeleteSubscriptionByIdResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationsApi#delete_subscription_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about the destination that you specify. The getDestination API is grantless. For more information, see \"Grantless operations\" in the Selling Partner API Developer Guide.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param destination_id The identifier generated when you created the destination.
    # @param [Hash] opts the optional parameters
    # @return [GetDestinationResponse]
    def get_destination(destination_id, opts = {})
      data, _status_code, _headers = get_destination_with_http_info(destination_id, opts)
      data
    end

    # Returns information about the destination that you specify. The getDestination API is grantless. For more information, see \&quot;Grantless operations\&quot; in the Selling Partner API Developer Guide.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param destination_id The identifier generated when you created the destination.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetDestinationResponse, Integer, Hash)>] GetDestinationResponse data, response status code and response headers
    def get_destination_with_http_info(destination_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotificationsApi.get_destination ...'
      end
      # verify the required parameter 'destination_id' is set
      if @api_client.config.client_side_validation && destination_id.nil?
        fail ArgumentError, "Missing the required parameter 'destination_id' when calling NotificationsApi.get_destination"
      end
      # resource path
      local_var_path = '/notifications/v1/destinations/{destinationId}'.sub('{' + 'destinationId' + '}', destination_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'Successful Response'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'GetDestinationResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationsApi#get_destination\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about all destinations. The getDestinations API is grantless. For more information, see \"Grantless operations\" in the Selling Partner API Developer Guide.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param [Hash] opts the optional parameters
    # @return [GetDestinationsResponse]
    def get_destinations(opts = {})
      data, _status_code, _headers = get_destinations_with_http_info(opts)
      data
    end

    # Returns information about all destinations. The getDestinations API is grantless. For more information, see \&quot;Grantless operations\&quot; in the Selling Partner API Developer Guide.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetDestinationsResponse, Integer, Hash)>] GetDestinationsResponse data, response status code and response headers
    def get_destinations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotificationsApi.get_destinations ...'
      end
      # resource path
      local_var_path = '/notifications/v1/destinations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'Successful Response'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'GetDestinationsResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationsApi#get_destinations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about subscriptions of the specified notification type. You can use this API to get subscription information when you do not have a subscription identifier.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param notification_type The type of notification.   For more information about notification types, see [the Notifications API Use Case Guide](doc:notifications-api-v1-use-case-guide).
    # @param [Hash] opts the optional parameters
    # @return [GetSubscriptionResponse]
    def get_subscription(notification_type, opts = {})
      data, _status_code, _headers = get_subscription_with_http_info(notification_type, opts)
      data
    end

    # Returns information about subscriptions of the specified notification type. You can use this API to get subscription information when you do not have a subscription identifier.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param notification_type The type of notification.   For more information about notification types, see [the Notifications API Use Case Guide](doc:notifications-api-v1-use-case-guide).
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetSubscriptionResponse, Integer, Hash)>] GetSubscriptionResponse data, response status code and response headers
    def get_subscription_with_http_info(notification_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotificationsApi.get_subscription ...'
      end
      # verify the required parameter 'notification_type' is set
      if @api_client.config.client_side_validation && notification_type.nil?
        fail ArgumentError, "Missing the required parameter 'notification_type' when calling NotificationsApi.get_subscription"
      end
      # resource path
      local_var_path = '/notifications/v1/subscriptions/{notificationType}'.sub('{' + 'notificationType' + '}', notification_type.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'Successful Response'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'GetSubscriptionResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationsApi#get_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about a subscription for the specified notification type. The getSubscriptionById API is grantless. For more information, see \"Grantless operations\" in the Selling Partner API Developer Guide.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param subscription_id The identifier for the subscription that you want to get.
    # @param notification_type The type of notification.   For more information about notification types, see [the Notifications API Use Case Guide](doc:notifications-api-v1-use-case-guide).
    # @param [Hash] opts the optional parameters
    # @return [GetSubscriptionByIdResponse]
    def get_subscription_by_id(subscription_id, notification_type, opts = {})
      data, _status_code, _headers = get_subscription_by_id_with_http_info(subscription_id, notification_type, opts)
      data
    end

    # Returns information about a subscription for the specified notification type. The getSubscriptionById API is grantless. For more information, see \&quot;Grantless operations\&quot; in the Selling Partner API Developer Guide.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 5 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param subscription_id The identifier for the subscription that you want to get.
    # @param notification_type The type of notification.   For more information about notification types, see [the Notifications API Use Case Guide](doc:notifications-api-v1-use-case-guide).
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetSubscriptionByIdResponse, Integer, Hash)>] GetSubscriptionByIdResponse data, response status code and response headers
    def get_subscription_by_id_with_http_info(subscription_id, notification_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotificationsApi.get_subscription_by_id ...'
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling NotificationsApi.get_subscription_by_id"
      end
      # verify the required parameter 'notification_type' is set
      if @api_client.config.client_side_validation && notification_type.nil?
        fail ArgumentError, "Missing the required parameter 'notification_type' when calling NotificationsApi.get_subscription_by_id"
      end
      # resource path
      local_var_path = '/notifications/v1/subscriptions/{notificationType}/{subscriptionId}'.sub('{' + 'subscriptionId' + '}', subscription_id.to_s).sub('{' + 'notificationType' + '}', notification_type.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'Successful Response'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'GetSubscriptionByIdResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationsApi#get_subscription_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
