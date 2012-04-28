//
//  AppDelegate.m
//  helpViewer
//
//  Created by 真有 津坂 on 12/04/29.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize saveint;
@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    //Intsave(saveint)の数を呼び出す、The value of Intsave(saveint) is called. 
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    saveint = [defaults integerForKey:@"Intsave"];
    NSLog(@"load1 = %d",saveint);
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    
    //Intsaveに「1」という数を保存する、"1" is saved at Intsave. 
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:1 forKey:@"Intsave"];
    [defaults synchronize];
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
        //Intsave(saveint)の数を呼び出す、The value of Intsave(saveint) is called. 
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    saveint = [defaults integerForKey:@"Intsave"];
    NSLog(@"load2 = %d",saveint);
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
      //Intsaveに「1」という数を保存する、"1" is saved at Intsave.
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:1 forKey:@"Intsave"];
    [defaults synchronize];
}

@end
