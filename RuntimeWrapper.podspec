#
# Be sure to run `pod lib lint RuntimeWrapper.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RuntimeWrapper'
  s.version          = '0.1.0'
  s.summary          = 'A short description of RuntimeWrapper.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/BetrayalPromise@gmail.com/RuntimeWrapper'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'BetrayalPromise@gmail.com' => 'BetrayalPromise@gmail.com' }
  s.source           = { :git => 'https://github.com/BetrayalPromise@gmail.com/RuntimeWrapper.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.public_header_files = 'RuntimeWrapper/RuntimeWrapper.h'
  s.source_files = 'RuntimeWrapper/RuntimeWrapper.h'
  
  s.subspec 'ARC' do |ss|
    ss.source_files = 'RuntimeWrapper/NSObject+ARCRunTime.{h,m}'
    ss.public_header_files = 'RuntimeWrapper/NSObject+ARCRunTime.h'
  end

  s.subspec 'MRC' do |ss|
    ss.requires_arc = false
    ss.source_files = 'RuntimeWrapper/NSObject+MRCRunTime.{h,m}'
    ss.public_header_files = 'RuntimeWrapper/NSObject+MRCRunTime.h'
  end

end
