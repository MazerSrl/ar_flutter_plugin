import Flutter
import UIKit

public class SwiftArFlutterPluginLight: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "ar_flutter_plugin_light", binaryMessenger: registrar.messenger())
    let instance = SwiftArFlutterPluginLight()
    registrar.addMethodCallDelegate(instance, channel: channel)
    
    let factory = IosARViewFactory(messenger: registrar.messenger())
    registrar.register(factory, withId: "ar_flutter_plugin_light")
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }

}
