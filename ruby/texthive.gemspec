# -*- encoding: utf-8 -*-

=begin
#TextHive Core API

#TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

The version of the OpenAPI document: 1.1.0
Contact: developers@texthive.khulnasoft.com
=end

$:.push File.expand_path("../lib", __FILE__)
require "texthive/version"

Gem::Specification.new do |s|
  s.name        = "texthive"
  s.version     = Texthive::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Sent API Support"]
  s.email       = ["developers@texthive.khulnasoft.com"]
  s.homepage    = "https://www.texthive.khulnasoft.com/"
  s.summary     = "TextHive Core API Ruby Gem"
  s.description = "TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels."
  s.license     = "MIT"
  s.required_ruby_version = ">= 2.4"
  s.metadata = {
    "documentation_uri" => "https://github.com/texthive/text-sdks/tree/main/ruby",
    "source_code_uri"   => "https://github.com/texthive/text-sdks/tree/main/ruby",
  }

  s.add_runtime_dependency 'faraday', '>= 1.0.1', '< 3.0'
  s.add_runtime_dependency 'faraday-multipart', '~> 1.0', '>= 1.0.4'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
