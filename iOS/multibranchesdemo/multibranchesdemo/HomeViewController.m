//
//  ViewController.m
//  multibranchesdemo
//
//  Created by Patrick Deng on 13-8-25.
//  Copyright (c) 2013年 Simplelife Studio. All rights reserved.
//

#import "HomeViewController.h"



@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    [self setupLeftMenuButton];
    
    [self.navigationController.navigationBar setTintColor:[UIColor
                                                           colorWithRed:78.0/255.0
                                                           green:156.0/255.0
                                                           blue:206.0/255.0
                                                           alpha:1.0]];    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setupLeftMenuButton
{
    MMDrawerBarButtonItem* leftDrawerButton = [[MMDrawerBarButtonItem alloc] initWithTarget:self action:@selector(leftDrawerButtonPress:)];
    [self.navigationItem setLeftBarButtonItem:leftDrawerButton animated:YES];
    self.navigationItem.title = @"主屏";
}

-(void)leftDrawerButtonPress:(id)sender
{
//    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];

    if (self.navigationController.revealController.focusedController == self.navigationController.revealController.leftViewController)
    {
        [self.navigationController.revealController showViewController:self.navigationController.revealController.frontViewController];
    }
    else
    {
        [self.navigationController.revealController showViewController:self.navigationController.revealController.leftViewController];
    }
}

@end
