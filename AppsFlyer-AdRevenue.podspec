Pod::Spec.new do |s|
  s.name             = 'AppsFlyer-AdRevenue'
  s.version          = '5.1.0'
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
  
  s.ios.deployment_target = '8.0'

  s.vendored_frameworks = 'iOS/AppsFlyerAdRevenue.framework'
  s.dependency 'AppsFlyerFramework', '~> 5.1.0'

end
