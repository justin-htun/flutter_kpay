#import "FlutterKpayPlugin.h"
#if __has_include(<flutter_kpay/flutter_kpay-Swift.h>)
#import <flutter_kpay/flutter_kpay-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_kpay-Swift.h"
#endif

@implementation FlutterKpayPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterKpayPlugin registerWithRegistrar:registrar];
}
@end
