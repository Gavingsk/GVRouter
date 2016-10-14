Pod::Spec.new do |s|
  s.name             = 'GVRouter'
  s.version          = '0.0.1'
  s.summary          = 'An extension of the HHRouter tool to support storyboard and Xib file initialization controller'
  s.description      = <<-DESC
                       It's' an extension of the HHRouter tool to support storyboard and Xib file initialization controller
                       DESC
  s.homepage         = 'https://github.com/Gavingsk/GVRouter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Gavingsk' => 'gavin_gushaokun@126.com' }
  s.source           = { :git => 'https://github.com/Gavingsk/GVRouter.git', :tag => s.version.to_s }
  s.ios.deployment_target = '7.0'
  s.source_files = 'GVRouter/Classes/**/*'
end
