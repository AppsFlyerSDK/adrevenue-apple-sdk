Pod::Spec.new do |s|
  s.name             = 'AppsFlyer-AdRevenue'
  s.version          = '6.4.0-beta'
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

  s.vendored_frameworks = 'iOS/AppsFlyerAdRevenue.xcframework'
  s.dependency 'AppsFlyerFramework', '~> 6.4.0'

end
