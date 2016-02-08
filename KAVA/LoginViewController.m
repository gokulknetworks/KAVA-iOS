//
//  LoginViewController.m
//  KAVA
//
//  Created by KNET-MACPRO2 on 05/02/16.
//  Copyright © 2016 KNET-MACPRO2. All rights reserved.
//

#import "LoginViewController.h"
#import "ConfigurationController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController
@synthesize txtUserId,txtPassword,btnLogin,scrlView;

- (void)viewDidLoad {
    [super viewDidLoad];
    [[ConfigurationController sharedManager]textFieldsBorderCustomizing:self.scrlView];
    [btnLogin.layer setCornerRadius:4.0];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationItem setTitle:@"Login"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)btnLoginPressed:(id)sender
{
    [self performSegueWithIdentifier:@"welcomeView" sender:self];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
