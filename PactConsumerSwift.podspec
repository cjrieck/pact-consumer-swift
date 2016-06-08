Pod::Spec.new do |s|
  s.name         = "PactConsumerSwift"
  s.version      = "0.2.0"
  s.summary      = "A Swift / ObjeciveC DSL for creating pacts."
  s.license      = { :type => 'MIT' }

  s.description  = <<-DESC
                    This library provides a Swift / Objective C DSL for creating Consumer [Pacts](http://pact.io).
                    
                    Implements [Pact Specification v2](https://github.com/pact-foundation/pact-specification/tree/version-2),
                    including [flexible matching](http://docs.pact.io/documentation/matching.html).
                   DESC

  s.homepage     = "https://github.com/DiUS/pact-consumer-swift"

  s.author       = { "andrewspinks" => "andrewspinks@gmail.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/DiUS/pact-consumer-swift.git", :tag => "v#{s.version}" }
  s.source_files = 'PactConsumerSwift/**/*.swift'
  s.resources = 'scripts/start_server.sh', 'scripts/stop_server.sh'
  s.requires_arc = true
  s.frameworks   = 'Foundation', 'UIKit', 'XCTest'

  s.dependency 'Alamofire', '~> 3.4'
  s.dependency 'BrightFutures', '~> 4.0'
end
