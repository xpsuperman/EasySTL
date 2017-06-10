Pod::Spec.new do |s|

  s.name = "EasySTL"
  s.version = "0.0.1"
  s.summary = "简易STL工具"
  s.homepage = "https://github.com/xpsuperman/EasySTL"
  s.license  = "All rights reserved"

  s.author = { "xpsuperman" => "xpsuperman@126.com" }

  s.platform = :ios, '7.0'
  s.source = { :git => "https://github.com/xpsuperman/EasySTL.git", :tag => s.version.to_s }
  s.source_files  = "Classes/**/*.{h,m}"
  s.resources = "Resources/**/*.{png,plist,html}"
  s.public_header_files = [
  "Classes/Public/*.h"
  ]
  s.requires_arc = true

end
