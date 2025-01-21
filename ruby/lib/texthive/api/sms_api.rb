=begin
#TextHive Core API

#TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

The version of the OpenAPI document: 1.1.0
Contact: developers@texthive.khulnasoft.com
=end

require 'cgi'

module Texthive
  class SMSApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Retrieve SMS contact information and capabilities
    #
    # Fetches or creates SMS contact information for a given phone number. This endpoint validates the phone number, determines SMS capabilities, and returns detailed formatting information needed for message delivery. Use this before sending messages to ensure proper SMS channel availability.
    #
    # @param phone_number [String] Target phone number in E.164 format (e.g., +1234567890)
    # @param retrieve_if_does_not_exists [Boolean] When true, creates a new SMS contact if one doesn't exist
    # @param sent_id [String] Optional Sent platform identifier for existing contacts
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_contact_info(phone_number:, retrieve_if_does_not_exists:, sent_id: SENTINEL, extra: {})
      extra[:sent_id] = sent_id if sent_id != SENTINEL
      api_response = get_contact_info_with_http_info_impl(phone_number, retrieve_if_does_not_exists, extra)
      api_response.data
    end

    # Retrieve SMS contact information and capabilities
    #
    # Fetches or creates SMS contact information for a given phone number. This endpoint validates the phone number, determines SMS capabilities, and returns detailed formatting information needed for message delivery. Use this before sending messages to ensure proper SMS channel availability.
    #
    # @param phone_number [String] Target phone number in E.164 format (e.g., +1234567890)
    # @param retrieve_if_does_not_exists [Boolean] When true, creates a new SMS contact if one doesn't exist
    # @param sent_id [String] Optional Sent platform identifier for existing contacts
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_contact_info_with_http_info(phone_number:, retrieve_if_does_not_exists:, sent_id: SENTINEL, extra: {})
      extra[:sent_id] = sent_id if sent_id != SENTINEL
      get_contact_info_with_http_info_impl(phone_number, retrieve_if_does_not_exists, extra)
    end

    # Retrieve SMS contact information and capabilities
    # Fetches or creates SMS contact information for a given phone number. This endpoint validates the phone number, determines SMS capabilities, and returns detailed formatting information needed for message delivery. Use this before sending messages to ensure proper SMS channel availability.
    # @param phone_number [String] Target phone number in E.164 format (e.g., +1234567890)
    # @param retrieve_if_does_not_exists [Boolean] When true, creates a new SMS contact if one doesn't exist
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sent_id Optional Sent platform identifier for existing contacts
    # @return [SMSPayload]
    private def get_contact_info_impl(phone_number, retrieve_if_does_not_exists, opts = {})
      data, _status_code, _headers = get_contact_info_with_http_info(phone_number, retrieve_if_does_not_exists, opts)
      data
    end

    # Retrieve SMS contact information and capabilities
    # Fetches or creates SMS contact information for a given phone number. This endpoint validates the phone number, determines SMS capabilities, and returns detailed formatting information needed for message delivery. Use this before sending messages to ensure proper SMS channel availability.
    # @param phone_number [String] Target phone number in E.164 format (e.g., +1234567890)
    # @param retrieve_if_does_not_exists [Boolean] When true, creates a new SMS contact if one doesn't exist
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sent_id Optional Sent platform identifier for existing contacts
    # @return [APIResponse] data is SMSPayload, status code, headers and response
    private def get_contact_info_with_http_info_impl(phone_number, retrieve_if_does_not_exists, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SMSApi.get_contact_info ...'
      end
      # verify the required parameter 'phone_number' is set
      if @api_client.config.client_side_validation && phone_number.nil?
        fail ArgumentError, "Missing the required parameter 'phone_number' when calling SMSApi.get_contact_info"
      end
      # verify the required parameter 'retrieve_if_does_not_exists' is set
      if @api_client.config.client_side_validation && retrieve_if_does_not_exists.nil?
        fail ArgumentError, "Missing the required parameter 'retrieve_if_does_not_exists' when calling SMSApi.get_contact_info"
      end
      # resource path
      local_var_path = '/sms'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'phoneNumber'] = phone_number
      query_params[:'retrieveIfDoesNotExists'] = retrieve_if_does_not_exists
      query_params[:'sentId'] = opts[:'sent_id'] if !opts[:'sent_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SMSPayload'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey', 'BearerAuth']

      new_options = opts.merge(
        :operation => :"SMSApi.get_contact_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SMSApi#get_contact_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  SMS = SMSApi::new
end
