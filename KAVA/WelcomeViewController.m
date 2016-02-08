//
//  WelcomeViewController.m
//  KAVA
//
//  Created by KNET-MACPRO2 on 07/02/16.
//  Copyright © 2016 KNET-MACPRO2. All rights reserved.
//

#import "WelcomeViewController.h"
#import "ConfigurationController.h"
#import "RESideMenu.h"
#import "DEMORootViewController.h"

@interface WelcomeViewController ()

@end

@implementation WelcomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btnMenu = [[ConfigurationController sharedManager]btnMenusCustomizing];
    [btnMenu addTarget:self action:@selector(btnMenu:)forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *barBtnLeft = [[UIBarButtonItem alloc] initWithCustomView:btnMenu];
    [self.navigationItem setLeftBarButtonItem:barBtnLeft];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark Menu functions
- (IBAction)btnMenu:(id)sender
{
    [self presentLeftMenuViewController:nil];
}

- (BOOL) shouldAllowMenu
{
    return YES;
}


@end
