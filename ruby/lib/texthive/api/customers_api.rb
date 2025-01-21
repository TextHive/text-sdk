=begin
#TextHive Core API

#TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

The version of the OpenAPI document: 1.1.0
Contact: developers@texthive.khulnasoft.com
=end

require 'cgi'

module Texthive
  class CustomersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a new customer account
    #
    # Creates a new customer account in the Sent platform. This endpoint initializes a new customer profile with basic information and returns the created customer details including generated IDs and credentials for various messaging channels.
    #
    # @param body [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def create_customer(body:, extra: {})
      body = body
      api_response = create_customer_with_http_info_impl(body, extra)
      api_response.data
    end

    # Create a new customer account
    #
    # Creates a new customer account in the Sent platform. This endpoint initializes a new customer profile with basic information and returns the created customer details including generated IDs and credentials for various messaging channels.
    #
    # @param body [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def create_customer_with_http_info(body:, extra: {})
      body = body
      create_customer_with_http_info_impl(body, extra)
    end

    # Create a new customer account
    # Creates a new customer account in the Sent platform. This endpoint initializes a new customer profile with basic information and returns the created customer details including generated IDs and credentials for various messaging channels.
    # @param body [String] Customer name to create the account
    # @param [Hash] opts the optional parameters
    # @return [Customer]
    private def create_customer_impl(body, opts = {})
      data, _status_code, _headers = create_customer_with_http_info(body, opts)
      data
    end

    # Create a new customer account
    # Creates a new customer account in the Sent platform. This endpoint initializes a new customer profile with basic information and returns the created customer details including generated IDs and credentials for various messaging channels.
    # @param body [String] Customer name to create the account
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Customer, status code, headers and response
    private def create_customer_with_http_info_impl(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersApi.create_customer ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CustomersApi.create_customer"
      end
      # resource path
      local_var_path = '/customers'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'Customer'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey', 'BearerAuth']

      new_options = opts.merge(
        :operation => :"CustomersApi.create_customer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#create_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Delete a customer
    #
    # Permanently deletes a customer and all associated data. This action cannot be undone. All active services for this customer will be terminated.
    #
    # @param id [String] Unique identifier of the customer to delete
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_customer(id:, extra: {})
      delete_customer_with_http_info_impl(id, extra)
      nil
    end

    # Delete a customer
    #
    # Permanently deletes a customer and all associated data. This action cannot be undone. All active services for this customer will be terminated.
    #
    # @param id [String] Unique identifier of the customer to delete
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_customer_with_http_info(id:, extra: {})
      delete_customer_with_http_info_impl(id, extra)
    end

    # Delete a customer
    # Permanently deletes a customer and all associated data. This action cannot be undone. All active services for this customer will be terminated.
    # @param id [String] Unique identifier of the customer to delete
    # @param [Hash] opts the optional parameters
    # @return [nil]
    private def delete_customer_impl(id, opts = {})
      delete_customer_with_http_info(id, opts)
      nil
    end

    # Delete a customer
    # Permanently deletes a customer and all associated data. This action cannot be undone. All active services for this customer will be terminated.
    # @param id [String] Unique identifier of the customer to delete
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is nil, status code, headers and response
    private def delete_customer_with_http_info_impl(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersApi.delete_customer ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CustomersApi.delete_customer"
      end
      # resource path
      local_var_path = '/customers/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey', 'BearerAuth']

      new_options = opts.merge(
        :operation => :"CustomersApi.delete_customer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#delete_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Retrieve all customers with pagination
    #
    # Returns a paginated list of all customers. Use page and pageSize parameters to control the number of results returned. Results are sorted by creation date in descending order.
    #
    # @param page [Integer] Page number to retrieve (starts from 1)
    # @param page_size [Integer] Number of items to return per page
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_all_customers(page:, page_size:, extra: {})
      api_response = get_all_customers_with_http_info_impl(page, page_size, extra)
      api_response.data
    end

    # Retrieve all customers with pagination
    #
    # Returns a paginated list of all customers. Use page and pageSize parameters to control the number of results returned. Results are sorted by creation date in descending order.
    #
    # @param page [Integer] Page number to retrieve (starts from 1)
    # @param page_size [Integer] Number of items to return per page
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_all_customers_with_http_info(page:, page_size:, extra: {})
      get_all_customers_with_http_info_impl(page, page_size, extra)
    end

    # Retrieve all customers with pagination
    # Returns a paginated list of all customers. Use page and pageSize parameters to control the number of results returned. Results are sorted by creation date in descending order.
    # @param page [Integer] Page number to retrieve (starts from 1)
    # @param page_size [Integer] Number of items to return per page
    # @param [Hash] opts the optional parameters
    # @return [Array<Customer>]
    private def get_all_customers_impl(page, page_size, opts = {})
      data, _status_code, _headers = get_all_customers_with_http_info(page, page_size, opts)
      data
    end

    # Retrieve all customers with pagination
    # Returns a paginated list of all customers. Use page and pageSize parameters to control the number of results returned. Results are sorted by creation date in descending order.
    # @param page [Integer] Page number to retrieve (starts from 1)
    # @param page_size [Integer] Number of items to return per page
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Array<Customer>, status code, headers and response
    private def get_all_customers_with_http_info_impl(page, page_size, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersApi.get_all_customers ...'
      end
      # verify the required parameter 'page' is set
      if @api_client.config.client_side_validation && page.nil?
        fail ArgumentError, "Missing the required parameter 'page' when calling CustomersApi.get_all_customers"
      end
      if @api_client.config.client_side_validation && page < 1
        fail ArgumentError, 'invalid value for "page" when calling CustomersApi.get_all_customers, must be greater than or equal to 1.'
      end

      # verify the required parameter 'page_size' is set
      if @api_client.config.client_side_validation && page_size.nil?
        fail ArgumentError, "Missing the required parameter 'page_size' when calling CustomersApi.get_all_customers"
      end
      if @api_client.config.client_side_validation && page_size > 100
        fail ArgumentError, 'invalid value for "page_size" when calling CustomersApi.get_all_customers, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && page_size < 1
        fail ArgumentError, 'invalid value for "page_size" when calling CustomersApi.get_all_customers, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/customers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = page
      query_params[:'pageSize'] = page_size

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Customer>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey', 'BearerAuth']

      new_options = opts.merge(
        :operation => :"CustomersApi.get_all_customers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#get_all_customers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Retrieve a customer by ID
    #
    # Returns detailed information about a specific customer including their messaging channel configurations and credentials.
    #
    # @param id [String] Unique identifier of the customer
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_customer_by_id(id:, extra: {})
      api_response = get_customer_by_id_with_http_info_impl(id, extra)
      api_response.data
    end

    # Retrieve a customer by ID
    #
    # Returns detailed information about a specific customer including their messaging channel configurations and credentials.
    #
    # @param id [String] Unique identifier of the customer
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_customer_by_id_with_http_info(id:, extra: {})
      get_customer_by_id_with_http_info_impl(id, extra)
    end

    # Retrieve a customer by ID
    # Returns detailed information about a specific customer including their messaging channel configurations and credentials.
    # @param id [String] Unique identifier of the customer
    # @param [Hash] opts the optional parameters
    # @return [Customer]
    private def get_customer_by_id_impl(id, opts = {})
      data, _status_code, _headers = get_customer_by_id_with_http_info(id, opts)
      data
    end

    # Retrieve a customer by ID
    # Returns detailed information about a specific customer including their messaging channel configurations and credentials.
    # @param id [String] Unique identifier of the customer
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Customer, status code, headers and response
    private def get_customer_by_id_with_http_info_impl(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersApi.get_customer_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CustomersApi.get_customer_by_id"
      end
      # resource path
      local_var_path = '/customers/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Customer'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey', 'BearerAuth']

      new_options = opts.merge(
        :operation => :"CustomersApi.get_customer_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#get_customer_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Update customer information
    #
    # Updates an existing customer's information including messaging channel configurations. All fields in the request body will override existing values.
    #
    # @param id [String] Unique identifier of the customer to update
    # @param name [String] Updated name of the customer organization
    # @param sending_phone_number [String] Updated primary phone number for sending messages
    # @param sms_messaging_profile_id [String] Updated SMS messaging profile identifier
    # @param sms_bearer_token [String] Updated bearer token for SMS authentication
    # @param body [CustomersUpdateCustomerRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def update_customer(id:, name: SENTINEL, sending_phone_number: SENTINEL, sms_messaging_profile_id: SENTINEL, sms_bearer_token: SENTINEL, extra: {})
      _body = {}
      _body[:name] = name if name != SENTINEL
      _body[:sendingPhoneNumber] = sending_phone_number if sending_phone_number != SENTINEL
      _body[:smsMessagingProfileId] = sms_messaging_profile_id if sms_messaging_profile_id != SENTINEL
      _body[:smsBearerToken] = sms_bearer_token if sms_bearer_token != SENTINEL
      customers_update_customer_request = _body
      api_response = update_customer_with_http_info_impl(id, customers_update_customer_request, extra)
      api_response.data
    end

    # Update customer information
    #
    # Updates an existing customer's information including messaging channel configurations. All fields in the request body will override existing values.
    #
    # @param id [String] Unique identifier of the customer to update
    # @param name [String] Updated name of the customer organization
    # @param sending_phone_number [String] Updated primary phone number for sending messages
    # @param sms_messaging_profile_id [String] Updated SMS messaging profile identifier
    # @param sms_bearer_token [String] Updated bearer token for SMS authentication
    # @param body [CustomersUpdateCustomerRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def update_customer_with_http_info(id:, name: SENTINEL, sending_phone_number: SENTINEL, sms_messaging_profile_id: SENTINEL, sms_bearer_token: SENTINEL, extra: {})
      _body = {}
      _body[:name] = name if name != SENTINEL
      _body[:sendingPhoneNumber] = sending_phone_number if sending_phone_number != SENTINEL
      _body[:smsMessagingProfileId] = sms_messaging_profile_id if sms_messaging_profile_id != SENTINEL
      _body[:smsBearerToken] = sms_bearer_token if sms_bearer_token != SENTINEL
      customers_update_customer_request = _body
      update_customer_with_http_info_impl(id, customers_update_customer_request, extra)
    end

    # Update customer information
    # Updates an existing customer's information including messaging channel configurations. All fields in the request body will override existing values.
    # @param id [String] Unique identifier of the customer to update
    # @param customers_update_customer_request [CustomersUpdateCustomerRequest] Updated customer information
    # @param [Hash] opts the optional parameters
    # @return [Customer]
    private def update_customer_impl(id, customers_update_customer_request, opts = {})
      data, _status_code, _headers = update_customer_with_http_info(id, customers_update_customer_request, opts)
      data
    end

    # Update customer information
    # Updates an existing customer&#39;s information including messaging channel configurations. All fields in the request body will override existing values.
    # @param id [String] Unique identifier of the customer to update
    # @param customers_update_customer_request [CustomersUpdateCustomerRequest] Updated customer information
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Customer, status code, headers and response
    private def update_customer_with_http_info_impl(id, customers_update_customer_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersApi.update_customer ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CustomersApi.update_customer"
      end
      # verify the required parameter 'customers_update_customer_request' is set
      if @api_client.config.client_side_validation && customers_update_customer_request.nil?
        fail ArgumentError, "Missing the required parameter 'customers_update_customer_request' when calling CustomersApi.update_customer"
      end
      # resource path
      local_var_path = '/customers/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(customers_update_customer_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Customer'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey', 'BearerAuth']

      new_options = opts.merge(
        :operation => :"CustomersApi.update_customer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#update_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Customers = CustomersApi::new
end
