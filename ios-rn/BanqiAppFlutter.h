// BanqiAppFlutter.h
#import <React/RCTBridgeModule.h>

@import Flutter;
@import FlutterPluginRegistrant;

@interface BanqiAppFlutter : NSObject <RCTBridgeModule>

@property (nonatomic,strong) FlutterEngine *flutterEngine;
+ (void)initWithFlutterEngine:(FlutterEngine * _Nonnull)flutterEngine;

@end