
Pod::Spec.new do |s|
  s.name         = "MokiManageSDK"
  s.version      = "0.0.1"
  s.summary      = "A short description of MokiManageSDK."
  # s.description  = <<-DESC
  #                   An optional longer description of MokiManageSDK
  #
  #                   * Markdown format.
  #                   * Don't worry about the indent, we strip it!
  #                  DESC
  s.homepage     = "http://github.com/MokiMobility/MokiManageSDK-iOS"
  
  s.license      = {
    :type => 'Commercial',
    :text => <<-LICENSE
              All text and design is copyright © 2013 MokiMobility

              All rights reserved.

              https://mokimobility.com/
    LICENSE
  }

  s.author       = { "MokiMobility" => "info@mokimobility.com" }
  s.source       = { :git => "http://github.com/MokiMobility/MokiManageSDK-iOS.git", :tag => "0.0.1" }

  s.platform     = :ios, '5.0'

  s.source_files = '*.{h,m,mm,c,cpp}'
  s.resources = "Buttons/*.png"
  s.preserve_paths = "libMokiManage.a"
  s.library = 'MokiManage'
  s.frameworks = 'ExternalAccessory', 'CoreTelephony', 'CoreLocation', 'SystemConfiguration', 'Foundation', 'CoreGraphics'
  s.requires_arc = true
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/MokiManageSDK"' }

  s.dependency 'AFNetworking', '~> 1.3.1'
end
