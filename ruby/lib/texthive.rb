=begin
#TextHive Core API

#TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

The version of the OpenAPI document: 1.1.0
Contact: developers@texthive.khulnasoft.com
=end

require 'forwardable'

# Common files
require 'texthive/api_client'
require 'texthive/api_error'
require 'texthive/version'
require 'texthive/configuration'

# Models
require 'texthive/models/category'
require 'texthive/models/channel'
require 'texthive/models/contact'
require 'texthive/models/customer'
require 'texthive/models/customers_update_customer_request'
require 'texthive/models/messages_send_message_to_contact400_response'
require 'texthive/models/messages_send_message_to_contact_response'
require 'texthive/models/messages_send_message_to_phone_number_response'
require 'texthive/models/messages_send_message_to_phone_number_response_channel'
require 'texthive/models/messages_send_message_to_phone_number_response_status'
require 'texthive/models/number_type'
require 'texthive/models/payload_phone_number'
require 'texthive/models/responses_template_response'
require 'texthive/models/sms_payload'
require 'texthive/models/sms_payload_all_of'
require 'texthive/models/send_message_to_contact_request'
require 'texthive/models/send_message_to_phone_number_request'
require 'texthive/models/sms_get_contact_info_response'
require 'texthive/models/status'
require 'texthive/models/template_create_request'
require 'texthive/models/whats_app_payload'
require 'texthive/models/whats_app_payload_all_of'
require 'texthive/models/whatsapp_get_whatsapp_contact_response'
require 'texthive/models/whatsapp_template_status'

# APIs
require 'texthive/api/contact_api'
require 'texthive/api/customers_api'
require 'texthive/api/messages_api'
require 'texthive/api/sms_api'
require 'texthive/api/templates_api'
require 'texthive/api/whatsapp_api'

module Texthive
  @config = Configuration.default
  SENTINEL = Object.new
  class << self

    private def is_sentinel(value)
      value == SENTINEL
    end

    def host
      @config.host
    end

    def host=(value)
      @config.host = value
    end
    # api key from OpenAPI spec
    def api_key
      @config.api_key
    end

    def api_key=(value)
      @config.api_key = value
    end

    # Customize default settings for the SDK using block.
    #   Texthive.configure do |config|
    #     config.host = "http://example.com"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end

  class Client
    attr_reader :contact
    attr_reader :customers
    attr_reader :messages
    attr_reader :sms
    attr_reader :templates
    attr_reader :whatsapp

    def initialize(config = Configuration.default)
      @api_client = ApiClient::new(config)
      @contact = Texthive::ContactApi.new(@api_client)
      @customers = Texthive::CustomersApi.new(@api_client)
      @messages = Texthive::MessagesApi.new(@api_client)
      @sms = Texthive::SMSApi.new(@api_client)
      @templates = Texthive::TemplatesApi.new(@api_client)
      @whatsapp = Texthive::WhatsappApi.new(@api_client)
    end
  end
end
