#
# Be sure to run `pod lib lint PluggableApplicationDelegate.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PluggableApplicationDelegate'
  s.version          = '0.1.1'
  s.summary          = 'Services oriented AppDelegate in Swift 3.'
  s.description      = <<-DESC
PluggableApplicationDelegate is a way of decoupling AppDelegate, by splitting it into small modules called ApplicationService.
Each ApplicationServices shares the life cycle with AppDelegate, and becomes its observer. Whenever AppDelegate runs any life cycle method, your Application services are notified and perform some action.
PluggableApplicationDelegate is an open class from which your AppDelegate needs to inherit. Your AppDelegate then needs to override its `services` property, returning an ApplicationServices array.
                       DESC

  s.homepage         = 'https://github.com/fmo91/PluggableApplicationDelegate'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'fmo91' => 'ortizfernandomartin@gmail.com' }
  s.source           = { :git => 'https://github.com/fmo91/PluggableApplicationDelegate.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'PluggableApplicationDelegate/Classes/**/*'
  
  # s.resource_bundles = {
  #   'PluggableApplicationDelegate' => ['PluggableApplicationDelegate/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
