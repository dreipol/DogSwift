#
# Be sure to run `pod lib lint DogSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DogSwift'
  s.version          = '1.1.2'
  s.summary          = 'Lightweight logging framework.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    Lightweight logging framework written in Swift.
                       DESC

  s.homepage         = 'https://github.com/dreipol/DogSwift'
  s.author           = { 'dreipol' => 'dev@dreipol.ch' }
  s.source           = { :git => 'https://github.com/dreipol/DogSwift.git', :tag => s.version.to_s }
  s.license          = { :type => 'MIT', :file => 'LICENSE' }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.12'
  s.swift_version = '5.0'

  s.source_files = 'Sources/DogSwift/**/*.{swift}'
end
