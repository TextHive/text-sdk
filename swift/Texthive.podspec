Pod::Spec.new do |s|
  s.name = 'Texthive'
  s.swift_version = '5.0'
  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '13.0'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '4.0'
  s.version = '1.0.0'
  s.source = { :git => 'https://github.com/texthive/text-sdks.git', :tag => 'v1.0.0' }
  s.authors = 'texthive.khulnasoft.com'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage = 'https://github.com/texthive/text-sdks/tree/main/swift'
  s.summary = 'Texthive Swift SDK'
  s.source_files = 'Texthive/**/*.swift'
  s.dependency 'AnyCodable-Konfig', '~> 0.6.9'
end
