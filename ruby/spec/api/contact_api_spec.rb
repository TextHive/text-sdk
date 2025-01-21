=begin
#TextHive Core API

#TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

The version of the OpenAPI document: 1.1.0
Contact: developers@texthive.khulnasoft.com
=end

require 'spec_helper'
require 'json'

# Unit tests for Texthive::ContactApi
describe 'ContactApi' do
  before do
    # run before each test
    @api_instance = Texthive::ContactApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContactApi' do
    it 'should create an instance of ContactApi' do
      expect(@api_instance).to be_instance_of(Texthive::ContactApi)
    end
  end

  # unit tests for get_contact_by_id
  # Retrieve a contact by ID
  # Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.
  # @param customer_id Unique identifier of the customer account
  # @param id Unique identifier of the contact
  # @param [Hash] opts the optional parameters
  # @return [Contact]
  describe 'get_contact_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_contact_by_phone
  # Retrieve a contact by phone number
  # Looks up contact information using a phone number. This endpoint is useful when you need to find a contact&#39;s details but only have their phone number. It returns the same detailed information as the ID-based lookup.
  # @param customer_id Unique identifier of the customer account
  # @param phone_number Phone number in E.164 format (e.g., +1234567890)
  # @param [Hash] opts the optional parameters
  # @return [Contact]
  describe 'get_contact_by_phone test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
