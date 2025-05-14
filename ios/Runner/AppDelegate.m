#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  // 这里可以添加任何原生iOS应用启动时需要的初始化代码
  // 比如配置第三方SDK、设置应用外观等
    
  // 初始化Flutter引擎
  [GeneratedPluginRegistrant registerWithRegistry:self];
  
  // 返回父类实现，这将启动Flutter应用
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end 
 