=begin
#TextHive Core API

#TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

The version of the OpenAPI document: 1.1.0
Contact: developers@texthive.khulnasoft.com
=end

require 'cgi'

module Texthive
  class WhatsappApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Retrieve WhatsApp contact information
    #
    # Fetches or creates WhatsApp contact information for a given phone number. This endpoint validates WhatsApp availability and returns detailed contact metadata including business account status and profile information.
    #
    # @param phone_number [String] Phone number in international format (E.164)
    # @param retrieve_if_does_not_exists [Boolean] Whether to create a new contact if one doesn't exist
    # @param sent_id [String] Optional Sent platform identifier for tracking
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_whatsapp_contact(phone_number:, retrieve_if_does_not_exists:, sent_id: SENTINEL, extra: {})
      extra[:sent_id] = sent_id if sent_id != SENTINEL
      api_response = get_whatsapp_contact_with_http_info_impl(phone_number, retrieve_if_does_not_exists, extra)
      api_response.data
    end

    # Retrieve WhatsApp contact information
    #
    # Fetches or creates WhatsApp contact information for a given phone number. This endpoint validates WhatsApp availability and returns detailed contact metadata including business account status and profile information.
    #
    # @param phone_number [String] Phone number in international format (E.164)
    # @param retrieve_if_does_not_exists [Boolean] Whether to create a new contact if one doesn't exist
    # @param sent_id [String] Optional Sent platform identifier for tracking
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_whatsapp_contact_with_http_info(phone_number:, retrieve_if_does_not_exists:, sent_id: SENTINEL, extra: {})
      extra[:sent_id] = sent_id if sent_id != SENTINEL
      get_whatsapp_contact_with_http_info_impl(phone_number, retrieve_if_does_not_exists, extra)
    end

    # Retrieve WhatsApp contact information
    # Fetches or creates WhatsApp contact information for a given phone number. This endpoint validates WhatsApp availability and returns detailed contact metadata including business account status and profile information.
    # @param phone_number [String] Phone number in international format (E.164)
    # @param retrieve_if_does_not_exists [Boolean] Whether to create a new contact if one doesn't exist
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sent_id Optional Sent platform identifier for tracking
    # @return [WhatsAppPayload]
    private def get_whatsapp_contact_impl(phone_number, retrieve_if_does_not_exists, opts = {})
      data, _status_code, _headers = get_whatsapp_contact_with_http_info(phone_number, retrieve_if_does_not_exists, opts)
      data
    end

    # Retrieve WhatsApp contact information
    # Fetches or creates WhatsApp contact information for a given phone number. This endpoint validates WhatsApp availability and returns detailed contact metadata including business account status and profile information.
    # @param phone_number [String] Phone number in international format (E.164)
    # @param retrieve_if_does_not_exists [Boolean] Whether to create a new contact if one doesn't exist
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sent_id Optional Sent platform identifier for tracking
    # @return [APIResponse] data is WhatsAppPayload, status code, headers and response
    private def get_whatsapp_contact_with_http_info_impl(phone_number, retrieve_if_does_not_exists, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WhatsappApi.get_whatsapp_contact ...'
      end
      # verify the required parameter 'phone_number' is set
      if @api_client.config.client_side_validation && phone_number.nil?
        fail ArgumentError, "Missing the required parameter 'phone_number' when calling WhatsappApi.get_whatsapp_contact"
      end
      # verify the required parameter 'retrieve_if_does_not_exists' is set
      if @api_client.config.client_side_validation && retrieve_if_does_not_exists.nil?
        fail ArgumentError, "Missing the required parameter 'retrieve_if_does_not_exists' when calling WhatsappApi.get_whatsapp_contact"
      end
      # resource path
      local_var_path = '/whatsapp'

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
      return_type = opts[:debug_return_type] || 'WhatsAppPayload'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey', 'BearerAuth']

      new_options = opts.merge(
        :operation => :"WhatsappApi.get_whatsapp_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WhatsappApi#get_whatsapp_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Whatsapp = WhatsappApi::new
end
