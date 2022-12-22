Pod::Spec.new do |s|
  s.name         = "A4LoadMeasure"
  s.description   = <<-DESC
  +load 监控
  DESC
  s.version      = "0.0.1"
  s.summary      = "A4LoadMeasure"
  s.homepage     = "http://wiki.intra.sina.com.cn"
  s.license      = "MIT"
  s.author       = { "fengjia3" => "fengjia3@staff.sina.com.cn" }
  # s.source       = { :path  => 'A4LoadMeasure' }
  s.source   = { :git => 'https://github.com/gph1991/A4LoadMeasure.git', :tag => s.version }
  s.platform     = :ios
  s.ios.deployment_target = '9.0'
  if ENV['A4LoadMeasure'] != 's'
     ENV['A4LoadMeasure'] = 'b'
  end
  if ENV['binary'] && ENV['A4LoadMeasure'] == 'b'
      s.source_files = "A4LoadMeasure.framework/**/*umbrella.{h}"
      s.public_header_files = "A4LoadMeasure.framework/**/*.{h}"
      s.resource = "A4LoadMeasure.framework/*.bundle"
      s.vendored_frameworks = "A4LoadMeasure.framework"
  else
      s.source_files = "A4LoadMeasure/**/*.{h,m}"
      s.public_header_files = "A4LoadMeasure/*.h"
  end
end
