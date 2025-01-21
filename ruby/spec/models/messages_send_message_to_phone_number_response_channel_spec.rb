=begin
#TextHive Core API

#TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

The version of the OpenAPI document: 1.1.0
Contact: developers@texthive.khulnasoft.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Texthive::MessagesSendMessageToPhoneNumberResponseChannel
describe Texthive::MessagesSendMessageToPhoneNumberResponseChannel do
  let(:instance) { Texthive::MessagesSendMessageToPhoneNumberResponseChannel.new }

  describe 'test an instance of MessagesSendMessageToPhoneNumberResponseChannel' do
    it 'should create an instance of MessagesSendMessageToPhoneNumberResponseChannel' do
      expect(instance).to be_instance_of(Texthive::MessagesSendMessageToPhoneNumberResponseChannel)
    end
  end
end
