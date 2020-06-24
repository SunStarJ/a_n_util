#import "AnutilPlugin.h"
#if __has_include(<anutil/anutil-Swift.h>)
#import <anutil/anutil-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "anutil-Swift.h"
#endif

@implementation AnutilPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAnutilPlugin registerWithRegistrar:registrar];
}
@end
