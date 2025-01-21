=begin
#TextHive Core API

#TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

The version of the OpenAPI document: 1.1.0
Contact: developers@texthive.khulnasoft.com
=end

require 'cgi'

module Texthive
  class ContactApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Retrieve a contact by ID
    #
    # Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.
    #
    # @param customer_id [String] Unique identifier of the customer account
    # @param id [String] Unique identifier of the contact
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_contact_by_id(customer_id:, id:, extra: {})
      api_response = get_contact_by_id_with_http_info_impl(customer_id, id, extra)
      api_response.data
    end

    # Retrieve a contact by ID
    #
    # Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.
    #
    # @param customer_id [String] Unique identifier of the customer account
    # @param id [String] Unique identifier of the contact
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_contact_by_id_with_http_info(customer_id:, id:, extra: {})
      get_contact_by_id_with_http_info_impl(customer_id, id, extra)
    end

    # Retrieve a contact by ID
    # Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.
    # @param customer_id [String] Unique identifier of the customer account
    # @param id [String] Unique identifier of the contact
    # @param [Hash] opts the optional parameters
    # @return [Contact]
    private def get_contact_by_id_impl(customer_id, id, opts = {})
      data, _status_code, _headers = get_contact_by_id_with_http_info(customer_id, id, opts)
      data
    end

    # Retrieve a contact by ID
    # Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.
    # @param customer_id [String] Unique identifier of the customer account
    # @param id [String] Unique identifier of the contact
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Contact, status code, headers and response
    private def get_contact_by_id_with_http_info_impl(customer_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactApi.get_contact_by_id ...'
      end
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling ContactApi.get_contact_by_id"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactApi.get_contact_by_id"
      end
      # resource path
      local_var_path = '/contact/{customerId}/id/{id}'.sub('{' + 'customerId' + '}', CGI.escape(customer_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Contact'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey', 'BearerAuth']

      new_options = opts.merge(
        :operation => :"ContactApi.get_contact_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#get_contact_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Retrieve a contact by phone number
    #
    # Looks up contact information using a phone number. This endpoint is useful when you need to find a contact's details but only have their phone number. It returns the same detailed information as the ID-based lookup.
    #
    # @param customer_id [String] Unique identifier of the customer account
    # @param phone_number [String] Phone number in E.164 format (e.g., +1234567890)
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_contact_by_phone(customer_id:, phone_number:, extra: {})
      api_response = get_contact_by_phone_with_http_info_impl(customer_id, phone_number, extra)
      api_response.data
    end

    # Retrieve a contact by phone number
    #
    # Looks up contact information using a phone number. This endpoint is useful when you need to find a contact's details but only have their phone number. It returns the same detailed information as the ID-based lookup.
    #
    # @param customer_id [String] Unique identifier of the customer account
    # @param phone_number [String] Phone number in E.164 format (e.g., +1234567890)
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_contact_by_phone_with_http_info(customer_id:, phone_number:, extra: {})
      get_contact_by_phone_with_http_info_impl(customer_id, phone_number, extra)
    end

    # Retrieve a contact by phone number
    # Looks up contact information using a phone number. This endpoint is useful when you need to find a contact's details but only have their phone number. It returns the same detailed information as the ID-based lookup.
    # @param customer_id [String] Unique identifier of the customer account
    # @param phone_number [String] Phone number in E.164 format (e.g., +1234567890)
    # @param [Hash] opts the optional parameters
    # @return [Contact]
    private def get_contact_by_phone_impl(customer_id, phone_number, opts = {})
      data, _status_code, _headers = get_contact_by_phone_with_http_info(customer_id, phone_number, opts)
      data
    end

    # Retrieve a contact by phone number
    # Looks up contact information using a phone number. This endpoint is useful when you need to find a contact&#39;s details but only have their phone number. It returns the same detailed information as the ID-based lookup.
    # @param customer_id [String] Unique identifier of the customer account
    # @param phone_number [String] Phone number in E.164 format (e.g., +1234567890)
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Contact, status code, headers and response
    private def get_contact_by_phone_with_http_info_impl(customer_id, phone_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactApi.get_contact_by_phone ...'
      end
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling ContactApi.get_contact_by_phone"
      end
      # verify the required parameter 'phone_number' is set
      if @api_client.config.client_side_validation && phone_number.nil?
        fail ArgumentError, "Missing the required parameter 'phone_number' when calling ContactApi.get_contact_by_phone"
      end
      # resource path
      local_var_path = '/contact/{customerId}/phone/{phoneNumber}'.sub('{' + 'customerId' + '}', CGI.escape(customer_id.to_s)).sub('{' + 'phoneNumber' + '}', CGI.escape(phone_number.to_s))

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
      return_type = opts[:debug_return_type] || 'Contact'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey', 'BearerAuth']

      new_options = opts.merge(
        :operation => :"ContactApi.get_contact_by_phone",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#get_contact_by_phone\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Contact = ContactApi::new
end
