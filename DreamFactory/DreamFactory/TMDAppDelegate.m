//
//  TMDAppDelegate.m
//  DreamFactory
//
//  Created by Dong Yiming on 8/23/13.
//  Copyright (c) 2013 ToMaDon. All rights reserved.
//

#import "TMDAppDelegate.h"
#import "TMDHomeVC.h"
#import "TMDLeftVC.h"
#import "TMDRightVC.h"

@implementation TMDAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{

}

@end
