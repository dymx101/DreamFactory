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
#import "MMDrawerController.h"
#import "TMDNaviController.h"

#import "MMExampleDrawerVisualStateManager.h"

@implementation TMDAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    TMDHomeVC *homeVC = [TMDHomeVC new];
    TMDNaviController *centerVC = [[TMDNaviController alloc] initWithRootViewController:homeVC];
    
    TMDLeftVC *leftVC = [TMDLeftVC new];
    TMDRightVC *rightVC = [TMDRightVC new];
    
    MMDrawerController *drawerController = [[MMDrawerController alloc] initWithCenterViewController:centerVC leftDrawerViewController:leftVC rightDrawerViewController:rightVC];
    
    [drawerController setMaximumRightDrawerWidth:100.0];
    [drawerController setMaximumLeftDrawerWidth:200.0];
    [drawerController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
    [drawerController setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
    
    [drawerController
     setDrawerVisualStateBlock:^(MMDrawerController *drawerController, MMDrawerSide drawerSide, CGFloat percentVisible) {
         MMDrawerControllerDrawerVisualStateBlock block;
         block = [[MMExampleDrawerVisualStateManager sharedManager]
                  drawerVisualStateBlockForDrawerSide:drawerSide];
         if(block){
             block(drawerController, drawerSide, percentVisible);
         }
     }];
    
    self.window.rootViewController = drawerController;
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
