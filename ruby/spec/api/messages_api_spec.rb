=begin
#TextHive Core API

#TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

The version of the OpenAPI document: 1.1.0
Contact: developers@texthive.khulnasoft.com
=end

require 'spec_helper'
require 'json'

# Unit tests for Texthive::MessagesApi
describe 'MessagesApi' do
  before do
    # run before each test
    @api_instance = Texthive::MessagesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MessagesApi' do
    it 'should create an instance of MessagesApi' do
      expect(@api_instance).to be_instance_of(Texthive::MessagesApi)
    end
  end

  # unit tests for send_message_to_contact
  # Send a message to a contact using a template
  # Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact&#39;s preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.
  # @param send_message_to_contact_request Message details including customer ID, contact ID, and template ID
  # @param [Hash] opts the optional parameters
  # @return [MessagesSendMessageToContactResponse]
  describe 'send_message_to_contact test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_message_to_phone_number
  # Send a message to a phone number using a template
  # Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn&#39;t exist.
  # @param send_message_to_phone_number_request Message details including customer ID, phone number, and template ID
  # @param [Hash] opts the optional parameters
  # @return [MessagesSendMessageToPhoneNumberResponse]
  describe 'send_message_to_phone_number test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
