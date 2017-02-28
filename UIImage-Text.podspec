Pod::Spec.new do |s|
    s.name                  = 'UIImage-Text'
    s.version               = '1.0'
    s.summary               = 'Add text to a UIImage.'
    s.license               = 'MIT'
    s.authors               = { 'Danilo Priore' => 'support@prioregroup.com' }
    s.homepage              = 'https://github.com/priore/UIImage-Text'
    s.social_media_url      = 'https://twitter.com/danilopriore'
    s.source                = { git: 'https://github.com/priore/UIImage-Text.git', :tag => "v#{s.version}" }
    s.requires_arc          = true
    s.source_files          = 'ImageText/UIImage+Text.{h,m}'
	s.ios.deployment_target = '7.0'
    s.ios.framework         = 'Foundation', 'CoreGraphics', 'UIKit'
	s.tvos.deployment_target = '9.0'
    s.tvos.framework         = 'Foundation', 'CoreGraphics', 'UIKit'
end
