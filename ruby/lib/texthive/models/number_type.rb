=begin
#TextHive Core API

#TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

The version of the OpenAPI document: 1.1.0
Contact: developers@texthive.khulnasoft.com
=end

require 'date'
require 'time'

module Texthive
  class NumberType
    MOBILE = "MOBILE".freeze
    LANDLINE = "LANDLINE".freeze
    VOIP = "VOIP".freeze
    UNKNOWN = "UNKNOWN".freeze

    def self.all_vars
      @all_vars ||= [MOBILE, LANDLINE, VOIP, UNKNOWN].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if NumberType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #NumberType"
    end
  end
end
