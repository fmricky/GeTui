Pod::Spec.new do |s|
  s.name = 'Getui'
  s.version = '1.5.3'
  s.ios.deployment_target = '7.0'

  s.license = {'type' => 'Copyright','text' => '个推云推送，All Rights Reserved.'}
  s.summary = 'Getui Push SDK'
  s.homepage = 'http://docs.getui.com/mobile/ios/overview/'
  s.author = { 'Geitui' => 'http://www.igetui.com/' }
  s.source = { :git => 'https://github.com/fmricky/Getui.git', :tag => s.version.to_s }

  s.description = '个推 iOS SDK 含IDFA版本'

  s.requires_arc = true
  s.framework = 'SystemConfiguration','CFNetwork','Security','AVFoundation','CoreLocation','CoreBluetooth','CoreTelephony','JavaScriptCore','MobileCoreServices','AdSupport'
  s.libraries = 'z','sqlite3','c++'
  
  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
    core.source_files = 'GeTuiSdk.h'
    core.vendored_libraries = 'libGeTuiSdk-1.5.3.a'
  end

  s.subspec 'GetuiExtSdk' do |ext|
    ext.source_files = 'GeTuiExtSdk.h'
    ext.framework = 'UserNotifications'
    ext.vendored_libraries = 'libGtExtensionSdk-1.0.0.a'
  end
end