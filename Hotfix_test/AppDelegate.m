//
//  AppDelegate.m
//  Hotfix_test
//
//  Created by 赵肖杰 on 2018/6/27.
//  Copyright © 2018年 赵肖杰. All rights reserved.
//

#import "AppDelegate.h"
#import "Felix.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //提前提供本地接口
    [Felix fixIt];
    
    
    ///模拟接口返回的js字符串
    NSString *fixScriptString = @"\
    fixInstanceMethodReplace('MightyCrash', 'divideUsingDenominator:obj2: ', function(instance, originInvocation, originArguments){ \
    console.log(instance); \
    console.log(originInvocation); \
    console.log(originArguments); \
    console.log(JSON.stringify(originArguments)); \
    if (originArguments[0] == null) { \
    console.log('传入的值 为空');\
    } else { \
    runInvocation(originInvocation); \
    } \
    }); \
    \
    ";
    [Felix evalString:fixScriptString];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
