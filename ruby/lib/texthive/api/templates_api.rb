=begin
#TextHive Core API

#TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

The version of the OpenAPI document: 1.1.0
Contact: developers@texthive.khulnasoft.com
=end

require 'cgi'

module Texthive
  class TemplatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a new message template
    #
    # Creates a new message template that can be used for sending standardized messages across different channels. Templates ensure consistent messaging and support variable substitution.
    #
    # @param customer_id [String] Unique identifier of the customer creating the template
    # @param name [String] Name of the template for identification purposes
    # @param body [TemplateCreateRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def create_template(customer_id:, name:, extra: {})
      _body = {}
      _body[:customerId] = customer_id if customer_id != SENTINEL
      _body[:name] = name if name != SENTINEL
      template_create_request = _body
      api_response = create_template_with_http_info_impl(template_create_request, extra)
      api_response.data
    end

    # Create a new message template
    #
    # Creates a new message template that can be used for sending standardized messages across different channels. Templates ensure consistent messaging and support variable substitution.
    #
    # @param customer_id [String] Unique identifier of the customer creating the template
    # @param name [String] Name of the template for identification purposes
    # @param body [TemplateCreateRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def create_template_with_http_info(customer_id:, name:, extra: {})
      _body = {}
      _body[:customerId] = customer_id if customer_id != SENTINEL
      _body[:name] = name if name != SENTINEL
      template_create_request = _body
      create_template_with_http_info_impl(template_create_request, extra)
    end

    # Create a new message template
    # Creates a new message template that can be used for sending standardized messages across different channels. Templates ensure consistent messaging and support variable substitution.
    # @param template_create_request [TemplateCreateRequest] Template creation details including customer ID and template name
    # @param [Hash] opts the optional parameters
    # @return [ResponsesTemplateResponse]
    private def create_template_impl(template_create_request, opts = {})
      data, _status_code, _headers = create_template_with_http_info(template_create_request, opts)
      data
    end

    # Create a new message template
    # Creates a new message template that can be used for sending standardized messages across different channels. Templates ensure consistent messaging and support variable substitution.
    # @param template_create_request [TemplateCreateRequest] Template creation details including customer ID and template name
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is ResponsesTemplateResponse, status code, headers and response
    private def create_template_with_http_info_impl(template_create_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.create_template ...'
      end
      # verify the required parameter 'template_create_request' is set
      if @api_client.config.client_side_validation && template_create_request.nil?
        fail ArgumentError, "Missing the required parameter 'template_create_request' when calling TemplatesApi.create_template"
      end
      # resource path
      local_var_path = '/templates'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(template_create_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ResponsesTemplateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey', 'BearerAuth']

      new_options = opts.merge(
        :operation => :"TemplatesApi.create_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesApi#create_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Retrieve all templates for a customer
    #
    # Returns a list of all message templates associated with the specified customer ID. Templates are returned in descending order by creation date.
    #
    # @param customer_id [String] Unique identifier of the customer
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_templates_for_customer(customer_id:, extra: {})
      api_response = get_templates_for_customer_with_http_info_impl(customer_id, extra)
      api_response.data
    end

    # Retrieve all templates for a customer
    #
    # Returns a list of all message templates associated with the specified customer ID. Templates are returned in descending order by creation date.
    #
    # @param customer_id [String] Unique identifier of the customer
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_templates_for_customer_with_http_info(customer_id:, extra: {})
      get_templates_for_customer_with_http_info_impl(customer_id, extra)
    end

    # Retrieve all templates for a customer
    # Returns a list of all message templates associated with the specified customer ID. Templates are returned in descending order by creation date.
    # @param customer_id [String] Unique identifier of the customer
    # @param [Hash] opts the optional parameters
    # @return [Array<ResponsesTemplateResponse>]
    private def get_templates_for_customer_impl(customer_id, opts = {})
      data, _status_code, _headers = get_templates_for_customer_with_http_info(customer_id, opts)
      data
    end

    # Retrieve all templates for a customer
    # Returns a list of all message templates associated with the specified customer ID. Templates are returned in descending order by creation date.
    # @param customer_id [String] Unique identifier of the customer
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Array<ResponsesTemplateResponse>, status code, headers and response
    private def get_templates_for_customer_with_http_info_impl(customer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.get_templates_for_customer ...'
      end
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling TemplatesApi.get_templates_for_customer"
      end
      # resource path
      local_var_path = '/templates'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'customerId'] = customer_id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<ResponsesTemplateResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey', 'BearerAuth']

      new_options = opts.merge(
        :operation => :"TemplatesApi.get_templates_for_customer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesApi#get_templates_for_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Templates = TemplatesApi::new
end
