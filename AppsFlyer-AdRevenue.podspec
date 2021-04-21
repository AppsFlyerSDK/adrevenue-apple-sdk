Pod::Spec.new do |s|
  s.name             = 'AppsFlyer-AdRevenue'
  s.version          = '6.2.6'
  s.summary          = 'The meaningful summary of AppsFlyer-AdRevenue.'
  s.description      = <<-DESC
AppsFlyer-AdRevenue description. Description will be added shortly.
                       DESC

  s.homepage         = 'https://github.com/AppsFlyerSDK/adrevenue-apple-sdk'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Andrey' => 'andrii.h@appsflyer.com' }
  s.source           = { :git => 'https://github.com/AppsFlyerSDK/adrevenue-apple-sdk.git', :tag => s.version.to_s }
  s.static_framework = true
  s.module_name = 'AppsFlyerAdRevenue'
  
  s.ios.deployment_target = '10.0'

  s.vendored_frameworks = 'iOS/AppsFlyerAdRevenue.framework'
  s.dependency 'AppsFlyerFramework', '~> 6.2.2'
  s.pod_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e armv7 armv7s', 'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'i386 x86_64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e armv7 armv7s', 'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'i386 x86_64' }

end
