#
# Be sure to run `pod lib lint MyRootOutSource.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MyRootOutSource'
  s.version          = '0.0.1'
  s.summary          = 'A short description of MyRootOutSource.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/ny8080/MyRootOutSource'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ny8080' => 'hongsang@2dfire.com' }
  s.source           = { :git => 'https://github.com/ny8080/MyRootOutSource.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'MyRootOutSource/Classes/**/{h,m}'
  
  # s.resource_bundles = {
  #   'MyRootOutSource' => ['MyRootOutSource/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
