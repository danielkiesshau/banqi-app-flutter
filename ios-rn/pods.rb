require 'json'

def use_banqi_flutter_module! (options={}, debugConfigs: ["Debug"], releaseConfigs: ["Release"])
  package = JSON.parse(File.read(File.join(__dir__, "../package.json")))
  packageName = package['name']
  prefix = options[:path] ||= "../node_modules/#{packageName}"

  pod 'Flutter', :podspec => "#{prefix}/build/ios/framework/Release/Flutter.podspec"
  pod 'BanqiAppFlutterFrameworks-Debug',
    :configuration => debugConfigs,
    :podspec => "#{prefix}/ios-rn/Podspecs/BanqiAppFlutterFrameworks-Debug.podspec"
  pod 'BanqiAppFlutterFrameworks-Release',
    :configuration => releaseConfigs,
    :podspec => "#{prefix}/ios-rn/Podspecs/BanqiAppFlutterFrameworks-Release.podspec"
end

