#import "FluwxPlugin.h"

@interface FluwxPlugin()
@property (strong,nonatomic)NSString *extMsg;
@end

@implementation FluwxPlugin



FlutterMethodChannel *channel = nil;

+ (void)registerWithRegistrar:(NSObject <FlutterPluginRegistrar> *)registrar {
    
#if TARGET_OS_IPHONE
        if (channel == nil) {
#endif
        channel = [FlutterMethodChannel
                methodChannelWithName:@"com.jarvanmo/fluwx"
                      binaryMessenger:[registrar messenger]];
#if TARGET_OS_IPHONE
        }
#endif

}


@end
