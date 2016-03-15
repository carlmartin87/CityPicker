#
# Be sure to run `pod lib lint CityPicker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "CityPicker"
  s.version          = "0.0.1"
  s.summary          = "Custom Picker View for picking Cities and Countries worldwide"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
  CityPicker is a customizable Picker View for picking almost all Cities in the world. The list is still being updated. Background and Visual Effect Views are customizable. 
                       DESC

  s.homepage         = "https://github.com/salvonos/CityPicker"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "salvonos" => "info@salvonostrato.com" }
  s.source           = { :git => "https://github.com/salvonos/CityPicker.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'CityPicker' => ['Pod/Assets/*.json']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
