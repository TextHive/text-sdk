=begin
#TextHive Core API

#TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

The version of the OpenAPI document: 1.1.0
Contact: developers@texthive.khulnasoft.com
=end

require 'spec_helper'
require 'json'

# Unit tests for Texthive::TemplatesApi
describe 'TemplatesApi' do
  before do
    # run before each test
    @api_instance = Texthive::TemplatesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TemplatesApi' do
    it 'should create an instance of TemplatesApi' do
      expect(@api_instance).to be_instance_of(Texthive::TemplatesApi)
    end
  end

  # unit tests for create_template
  # Create a new message template
  # Creates a new message template that can be used for sending standardized messages across different channels. Templates ensure consistent messaging and support variable substitution.
  # @param template_create_request Template creation details including customer ID and template name
  # @param [Hash] opts the optional parameters
  # @return [ResponsesTemplateResponse]
  describe 'create_template test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_templates_for_customer
  # Retrieve all templates for a customer
  # Returns a list of all message templates associated with the specified customer ID. Templates are returned in descending order by creation date.
  # @param customer_id Unique identifier of the customer
  # @param [Hash] opts the optional parameters
  # @return [Array<ResponsesTemplateResponse>]
  describe 'get_templates_for_customer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
