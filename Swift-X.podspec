
Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "Swift-X"
  s.version      = "0.1.2"
  s.summary      = "Swift-X."

  s.description  = <<-DESC
				Extension: extension of UIColor、UIImage etc.
				UIKit: UI 
                   DESC

  s.homepage     = "https://github.com/ApterKing/Swift-X"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.license      = { :type => "MIT", :file => "LICENSE" }

  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.author             = { "ApterKing" => "wangcccong@outlook.com" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.platform     = :ios, "8.0"

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source       = { :git => "https://github.com/ApterKing/Swift-X.git", :tag => "#{s.version}" }

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.requires_arc = true

  s.subspec "Extensions" do |ss|
  	ss.source_files = "Swift-X/Classes/Extensions/**/*.swift"
 	ss.frameworks = "Foundation", "Foundation", "UIKit"
  end

  s.subspec "UIKit" do |ss|
  	ss.source_files = "Swift-X/Classes/UIKit/**/*.swift"
 	ss.frameworks = "UIKit"
    ss.dependency 'Swift-X/Extensions'
  end

end
