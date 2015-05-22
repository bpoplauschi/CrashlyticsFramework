Pod::Spec.new do |s|
  s.name         = "CrashlyticsFramework"
  s.version      = "3.0"
  s.summary      = "The most powerful, yet lightest weight crash reporting solution for iOS and Android developers. | Crashlytics"
  s.homepage     = "http://crashlytics.com"
  s.license      = {
    :type => 'Copyright',
    :file => 'LICENSE' # Copied from http://try.crashlytics.com/terms/terms-of-service.pdf
  }
  s.author       = 'Crashlytics'
  s.source       = { :git => "https://github.com/fnxpt/CrashlyticsFramework.git", :tag => s.version.to_s }
  s.platform     = :ios, '5.0'
  s.requires_arc = true
  s.default_subspec = "Core"

  s.subspec "Core" do |core|
    core.vendored_frameworks = "Fabric.framework"
    core.public_header_files = "Fabric.framework/Versions/A/Headers/*.h"
  end

  s.subspec "Crashlytics" do |crashlytics|
    crashlytics.vendored_frameworks = "Crashlytics.framework"
    crashlytics.public_header_files = "Crashlytics.framework/Versions/A/Headers/*.h"
  end

end
