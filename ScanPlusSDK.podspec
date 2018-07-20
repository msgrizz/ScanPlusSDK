Pod::Spec.new do |s|
  s.header_dir		          = 'ScanPlusSDK'
  s.name                    = 'ScanPlusSDK'
  s.version                 = '1.0.0'

  s.summary                 = 'Use Tesseract OCR in iOS projects written in either Objective-C or Swift.'

  s.homepage                = 'https://github.com/msgrizz/ScanPlusSDK'
  s.documentation_url       = 'https://github.com/msgrizz/ScanPlusSDK/blob/master/README.md'

  s.license                 = { :type => 'MIT',
                                :file => 'LICENSE.md' }

  s.authors                 = { 'Mister Grizzly Official' => 'hi@mistergrizzly.com' }

  s.source                  = { :git => 'https://github.com/msgrizz/ScanPlusSDK.git', :tag => s.version.to_s }

  s.platform                = :ios, "8.1"
  s.source_files            = 'ScanPlusSDK/*.{h,m,mm}', 'ScanPlusSDK/include/**/*.h'
  s.private_header_files    = 'ScanPlusSDK/include/**/*.h'
  s.requires_arc            = true
  s.frameworks              = 'UIKit', 'Foundation'

  s.ios.deployment_target   = "7.0"
  s.ios.vendored_library    = 'ScanPlusSDK/lib/*.a'
  s.xcconfig                = { 'OTHER_LDFLAGS' => '-lstdc++ -lz',
                                'CLANG_CXX_LIBRARY' => 'compiler-default' }

end
