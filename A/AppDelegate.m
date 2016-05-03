//
//  AppDelegate.m
//  A
//
//  Created by wangxiao on 16/5/3.
//  Copyright © 2016年 wangxiao. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    

    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


//当一个应用程序被其他程序打开的时候会调用这个方法，在该方法中可以实现两个应用程序间的数据局传递
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {

    NSString *urlStr = [url absoluteString];
    if ([urlStr hasPrefix:@"myAppTest://"]) {
        NSLog(@"TestAppDemo1 request params: %@", urlStr);
        urlStr = [urlStr stringByReplacingOccurrencesOfString:@"myAppTest://" withString:@""];
        NSArray *paramArray = [urlStr componentsSeparatedByString:@"&"];
        NSLog(@"paramArray: %@", paramArray);
        NSMutableDictionary *paramsDic = [[NSMutableDictionary alloc] initWithCapacity:0];
        for (int i = 0; i < paramArray.count; i++) {
            NSString *str = paramArray[i];
            NSArray *keyArray = [str componentsSeparatedByString:@"="];
            NSString *key = keyArray[0];
            NSString *value = keyArray[1];
            [paramsDic setObject:value forKey:key];
            NSLog(@"key:%@ ==== value:%@", key, value);
        }
        
    }
    return NO;

}

@end
