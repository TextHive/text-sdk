=begin
#TextHive Core API

#TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

The version of the OpenAPI document: 1.1.0
Contact: developers@texthive.khulnasoft.com
=end

require 'spec_helper'
require 'json'

# Unit tests for Texthive::WhatsappApi
describe 'WhatsappApi' do
  before do
    # run before each test
    @api_instance = Texthive::WhatsappApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WhatsappApi' do
    it 'should create an instance of WhatsappApi' do
      expect(@api_instance).to be_instance_of(Texthive::WhatsappApi)
    end
  end

  # unit tests for get_whatsapp_contact
  # Retrieve WhatsApp contact information
  # Fetches or creates WhatsApp contact information for a given phone number. This endpoint validates WhatsApp availability and returns detailed contact metadata including business account status and profile information.
  # @param phone_number Phone number in international format (E.164)
  # @param retrieve_if_does_not_exists Whether to create a new contact if one doesn&#39;t exist
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sent_id Optional Sent platform identifier for tracking
  # @return [WhatsAppPayload]
  describe 'get_whatsapp_contact test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
