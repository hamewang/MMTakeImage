#
# Be sure to run `pod lib lint MMTakeImage.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MMTakeImage'
  s.version          = '2.0.0'
  s.summary          = 'moreme take image'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
moreme sdk take image  ,get mid ,cid ,cgid
                       DESC

  s.homepage         = 'https://github.com/hamewang/MMTakeImage'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '304635659@qq.com' => '304635659@qq.com' }
  s.source           = { :git => 'https://github.com/hamewang/MMTakeImage.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'MMTakeImage/Classes/**/*'

  s.resources = 'MMTakeImage/Assets/*.bundle'
  s.vendored_frameworks = 'MMTakeImage/Assets/*.framework'
  # s.resource_bundles = {
  #   'DKCamera' => ['DKCamera/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.static_framework = true
   s.dependency 'GPUImage'
   s.dependency 'OpenCV'
   s.dependency 'FMDB'
   s.dependency 'AliyunOSSiOS'
   s.dependency 'SVProgressHUD'
   s.dependency 'SDWebImage'
   s.dependency 'Masonry'
  
end
