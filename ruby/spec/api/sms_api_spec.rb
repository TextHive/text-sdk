=begin
#TextHive Core API

#TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

The version of the OpenAPI document: 1.1.0
Contact: developers@texthive.khulnasoft.com
=end

require 'spec_helper'
require 'json'

# Unit tests for Texthive::SMSApi
describe 'SMSApi' do
  before do
    # run before each test
    @api_instance = Texthive::SMSApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SMSApi' do
    it 'should create an instance of SMSApi' do
      expect(@api_instance).to be_instance_of(Texthive::SMSApi)
    end
  end

  # unit tests for get_contact_info
  # Retrieve SMS contact information and capabilities
  # Fetches or creates SMS contact information for a given phone number. This endpoint validates the phone number, determines SMS capabilities, and returns detailed formatting information needed for message delivery. Use this before sending messages to ensure proper SMS channel availability.
  # @param phone_number Target phone number in E.164 format (e.g., +1234567890)
  # @param retrieve_if_does_not_exists When true, creates a new SMS contact if one doesn&#39;t exist
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sent_id Optional Sent platform identifier for existing contacts
  # @return [SMSPayload]
  describe 'get_contact_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
