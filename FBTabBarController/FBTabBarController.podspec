Pod::Spec.new do |spec|

  spec.name         = "FBTabBarController"
  spec.version      = "1.0.2"
  spec.summary      = "An iOS tab bar controller to mimic Facebook's tab bar"
  spec.description  = "This is a small framework to create a tab bar similar to the one in Facebook's iOS platform."
  spec.homepage     = "https://github.com/calebrudnicki/FBTabBarController.git"
  spec.license      = "MIT"
  spec.author       = { "Caleb Rudnicki" => "calebrudnicki@gmail.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/calebrudnicki/FBTabBarController.git", :tag => "#{spec.version}" }
  spec.source_files  = "FBTabBarController/**/*.{h,swift}"
  spec.swift_version   = "5.0"
  
 end
