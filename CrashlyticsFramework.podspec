Pod::Spec.new do |s|
  s.name         = "CrashlyticsFramework"
  s.version      = "2.2.5.2"
  s.summary      = "The most powerful, yet lightest weight crash reporting solution for iOS and Android developers. | Crashlytics"
  s.homepage     = "http://crashlytics.com"
  s.license      = { 
    :type => 'Copyright',
    :file => 'LICENSE' # Copied from http://try.crashlytics.com/terms/terms-of-service.pdf
  }
  s.author       = 'Crashlytics'
  s.source       = { :git => "https://github.com/bpoplauschi/CrashlyticsFramework.git", :tag => s.version.to_s }
  s.platform     = :ios
  s.ios.vendored_frameworks = 'Crashlytics.framework'
end
