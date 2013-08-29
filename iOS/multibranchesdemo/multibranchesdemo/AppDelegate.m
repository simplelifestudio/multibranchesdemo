//
//  AppDelegate.m
//  multibranchesdemo
//
//  Created by Patrick Deng on 13-8-25.
//  Copyright (c) 2013年 Simplelife Studio. All rights reserved.
//

#import "AppDelegate.h"

#import "MMDrawerController/MMExampleDrawerVisualStateManager.h"

@implementation AppDelegate

@synthesize navigationController = _navigationController;
@synthesize homeViewController = _homeViewController;
@synthesize interestCardViewController = _interestCardViewController;
@synthesize impressCardViewController = _impressCardViewController;
@synthesize deviceCardViewController = _deviceCardViewController;
@synthesize configViewController = _configViewController;
@synthesize helpViewController = _helpViewController;

@synthesize leftbarViewController = _leftbarViewController;

@synthesize revealController = _revealController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    
    _navigationController = [storyboard instantiateViewControllerWithIdentifier:@"sbid_navigationcontroller"];
    
    _homeViewController = [storyboard instantiateViewControllerWithIdentifier:@"sbid_homeviewcontroller"];
    _interestCardViewController = [storyboard instantiateViewControllerWithIdentifier:@"sbid_interestcardviewcontroller"];
    _impressCardViewController = [storyboard instantiateViewControllerWithIdentifier:@"sbid_impresscardviewcontroller"];
    _deviceCardViewController = [storyboard instantiateViewControllerWithIdentifier:@"sbid_devicecardviewcontroller"];
    _configViewController = [storyboard instantiateViewControllerWithIdentifier:@"sbid_configviewcontroller"];
    _helpViewController = [storyboard instantiateViewControllerWithIdentifier:@"sbid_helpviewcontroller"];
    
    _leftbarViewController = [storyboard instantiateViewControllerWithIdentifier:@"sbid_leftbarviewcontroller"];
    
    UIWindow* window = self.window;
    _revealController = (PKRevealController*)window.rootViewController;
    NSLog(@"RootViewController - %@", _revealController);
    
    [_revealController setLeftViewController:_leftbarViewController];
    [_revealController setFrontViewController:_navigationController];
    [_revealController setMinimumWidth:120 maximumWidth:120 forViewController:_leftbarViewController];
    
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
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
