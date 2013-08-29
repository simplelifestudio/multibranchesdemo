//
//  AppDelegate.h
//  multibranchesdemo
//
//  Created by Patrick Deng on 13-8-25.
//  Copyright (c) 2013年 Simplelife Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MMDrawerController.h"

#import "HomeViewController.h"
#import "InterestCardViewController.h"
#import "ImpressCardViewController.h"
#import "DeviceCardViewController.h"
#import "ConfigViewController.h"
#import "HelpViewController.h"

#import "PKRevealController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, strong, readwrite) PKRevealController *revealController;

@property (nonatomic, strong, readwrite) UINavigationController* navigationController;

@property (nonatomic, strong, readwrite) HomeViewController* homeViewController;
@property (nonatomic, strong, readwrite) InterestCardViewController* interestCardViewController;
@property (nonatomic, strong, readwrite) ImpressCardViewController* impressCardViewController;
@property (nonatomic, strong, readwrite) DeviceCardViewController* deviceCardViewController;
@property (nonatomic, strong, readwrite) ConfigViewController* configViewController;
@property (nonatomic, strong, readwrite) HelpViewController* helpViewController;

@property (nonatomic, strong, readwrite) UIViewController* leftbarViewController;

@end
