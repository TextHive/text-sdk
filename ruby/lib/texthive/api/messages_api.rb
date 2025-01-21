=begin
#TextHive Core API

#TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

The version of the OpenAPI document: 1.1.0
Contact: developers@texthive.khulnasoft.com
=end

require 'cgi'

module Texthive
  class MessagesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Send a message to a contact using a template
    #
    # Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact's preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.
    #
    # @param customer_id [String] Unique identifier of the customer
    # @param contact_id [String] Unique identifier of the contact
    # @param template_id [String] Unique identifier of the message template
    # @param body [SendMessageToContactRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def send_message_to_contact(customer_id:, contact_id:, template_id:, extra: {})
      _body = {}
      _body[:customerId] = customer_id if customer_id != SENTINEL
      _body[:contactId] = contact_id if contact_id != SENTINEL
      _body[:templateId] = template_id if template_id != SENTINEL
      send_message_to_contact_request = _body
      api_response = send_message_to_contact_with_http_info_impl(send_message_to_contact_request, extra)
      api_response.data
    end

    # Send a message to a contact using a template
    #
    # Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact's preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.
    #
    # @param customer_id [String] Unique identifier of the customer
    # @param contact_id [String] Unique identifier of the contact
    # @param template_id [String] Unique identifier of the message template
    # @param body [SendMessageToContactRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def send_message_to_contact_with_http_info(customer_id:, contact_id:, template_id:, extra: {})
      _body = {}
      _body[:customerId] = customer_id if customer_id != SENTINEL
      _body[:contactId] = contact_id if contact_id != SENTINEL
      _body[:templateId] = template_id if template_id != SENTINEL
      send_message_to_contact_request = _body
      send_message_to_contact_with_http_info_impl(send_message_to_contact_request, extra)
    end

    # Send a message to a contact using a template
    # Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact's preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.
    # @param send_message_to_contact_request [SendMessageToContactRequest] Message details including customer ID, contact ID, and template ID
    # @param [Hash] opts the optional parameters
    # @return [MessagesSendMessageToContactResponse]
    private def send_message_to_contact_impl(send_message_to_contact_request, opts = {})
      data, _status_code, _headers = send_message_to_contact_with_http_info(send_message_to_contact_request, opts)
      data
    end

    # Send a message to a contact using a template
    # Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact&#39;s preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.
    # @param send_message_to_contact_request [SendMessageToContactRequest] Message details including customer ID, contact ID, and template ID
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is MessagesSendMessageToContactResponse, status code, headers and response
    private def send_message_to_contact_with_http_info_impl(send_message_to_contact_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.send_message_to_contact ...'
      end
      # verify the required parameter 'send_message_to_contact_request' is set
      if @api_client.config.client_side_validation && send_message_to_contact_request.nil?
        fail ArgumentError, "Missing the required parameter 'send_message_to_contact_request' when calling MessagesApi.send_message_to_contact"
      end
      # resource path
      local_var_path = '/messages'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(send_message_to_contact_request)

      # return_type
      return_type = opts[:debug_return_type] || 'MessagesSendMessageToContactResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey', 'BearerAuth']

      new_options = opts.merge(
        :operation => :"MessagesApi.send_message_to_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#send_message_to_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Send a message to a phone number using a template
    #
    # Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn't exist.
    #
    # @param customer_id [String] Unique identifier of the customer
    # @param phone_number [String] Phone number in E.164 format
    # @param template_id [String] Unique identifier of the message template
    # @param body [SendMessageToPhoneNumberRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def send_message_to_phone_number(customer_id:, phone_number:, template_id:, extra: {})
      _body = {}
      _body[:customerId] = customer_id if customer_id != SENTINEL
      _body[:phoneNumber] = phone_number if phone_number != SENTINEL
      _body[:templateId] = template_id if template_id != SENTINEL
      send_message_to_phone_number_request = _body
      api_response = send_message_to_phone_number_with_http_info_impl(send_message_to_phone_number_request, extra)
      api_response.data
    end

    # Send a message to a phone number using a template
    #
    # Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn't exist.
    #
    # @param customer_id [String] Unique identifier of the customer
    # @param phone_number [String] Phone number in E.164 format
    # @param template_id [String] Unique identifier of the message template
    # @param body [SendMessageToPhoneNumberRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def send_message_to_phone_number_with_http_info(customer_id:, phone_number:, template_id:, extra: {})
      _body = {}
      _body[:customerId] = customer_id if customer_id != SENTINEL
      _body[:phoneNumber] = phone_number if phone_number != SENTINEL
      _body[:templateId] = template_id if template_id != SENTINEL
      send_message_to_phone_number_request = _body
      send_message_to_phone_number_with_http_info_impl(send_message_to_phone_number_request, extra)
    end

    # Send a message to a phone number using a template
    # Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn't exist.
    # @param send_message_to_phone_number_request [SendMessageToPhoneNumberRequest] Message details including customer ID, phone number, and template ID
    # @param [Hash] opts the optional parameters
    # @return [MessagesSendMessageToPhoneNumberResponse]
    private def send_message_to_phone_number_impl(send_message_to_phone_number_request, opts = {})
      data, _status_code, _headers = send_message_to_phone_number_with_http_info(send_message_to_phone_number_request, opts)
      data
    end

    # Send a message to a phone number using a template
    # Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn&#39;t exist.
    # @param send_message_to_phone_number_request [SendMessageToPhoneNumberRequest] Message details including customer ID, phone number, and template ID
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is MessagesSendMessageToPhoneNumberResponse, status code, headers and response
    private def send_message_to_phone_number_with_http_info_impl(send_message_to_phone_number_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessagesApi.send_message_to_phone_number ...'
      end
      # verify the required parameter 'send_message_to_phone_number_request' is set
      if @api_client.config.client_side_validation && send_message_to_phone_number_request.nil?
        fail ArgumentError, "Missing the required parameter 'send_message_to_phone_number_request' when calling MessagesApi.send_message_to_phone_number"
      end
      # resource path
      local_var_path = '/messages/phone-number'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(send_message_to_phone_number_request)

      # return_type
      return_type = opts[:debug_return_type] || 'MessagesSendMessageToPhoneNumberResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey', 'BearerAuth']

      new_options = opts.merge(
        :operation => :"MessagesApi.send_message_to_phone_number",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#send_message_to_phone_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Messages = MessagesApi::new
end
