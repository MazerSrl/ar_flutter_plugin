#import "ArFlutterPluginLight.h"
#if __has_include(<ar_flutter_plugin_light/ar_flutter_plugin_light-Swift.h>)
#import <ar_flutter_plugin_light/ar_flutter_plugin_light-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ar_flutter_plugin_light-Swift.h"
#endif

@implementation ArFlutterPluginLight
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftArFlutterPluginLight registerWithRegistrar:registrar];
}
@end
