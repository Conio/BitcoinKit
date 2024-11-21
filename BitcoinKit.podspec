Pod::Spec.new do |spec|
  spec.name = 'BitcoinKit'
  spec.version = '1.0.4'
  spec.summary = 'Bitcoin(BCH/BTC) protocol toolkit for Swift'
  spec.description = <<-DESC
                       The BitcoinKit library is a Swift implementation of the Bitcoin(BCH/BTC) protocol. This library was originally made by Katsumi Kishikawa, and now is maintained by Yenom Inc. It allows maintaining a wallet and sending/receiving transactions without needing a full blockchain node. It comes with a simple wallet app showing how to use it.
                       ```
                    DESC
  spec.homepage = 'https://github.com/yenom/BitcoinKit'
  spec.license = { :type => 'MIT', :file => 'LICENSE' }
  spec.author = { 'BitcoinKit developers' => 'usatie@yenom.tech' }

  spec.requires_arc = true
  spec.source = { git: 'https://github.com/yenom/BitcoinKit.git', tag: "v#{spec.version}" }
  spec.source_files = 'Sources/BitcoinKit/**/*.{h,m,swift}'
  spec.ios.deployment_target = '8.0'
  spec.swift_version = '4.1'

  spec.pod_target_xcconfig = { 'SWIFT_WHOLE_MODULE_OPTIMIZATION' => 'YES',
                               'APPLICATION_EXTENSION_API_ONLY' => 'YES',
                               'OTHER_SWIFT_FLAGS' => '-D BitcoinKitXcode' }

  spec.dependency 'secp256k1.swift', '~> 0.1'
  spec.dependency 'CryptoSwift', '~> 1.5.1'
end
