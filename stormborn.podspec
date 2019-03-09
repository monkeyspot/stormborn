#
# Be sure to run `pod lib lint koala-injection.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'stormborn'
  s.version          = '0.1.0'
  s.summary          = 'Lazy method swizzling, limited to 20 arguments.'

  s.description      = <<-DESC
Lazy method swizzling, limited to 20 arguments.
                       DESC

  s.homepage         = 'https://github.com/monkeyspot/stormborn'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Oliver Letterer' => 'oliver.letterer@gmail.com' }
  s.source           = { :git => 'https://github.com/monkeyspot/stormborn.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/OliverLetterer'

  s.ios.deployment_target = '10.0'

  s.source_files = 'stormborn/*'
end
