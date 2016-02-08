//
//  SignUpViewController.m
//  KAVA
//
//  Created by KNET-MACPRO2 on 05/02/16.
//  Copyright © 2016 KNET-MACPRO2. All rights reserved.
//

#import "SignUpViewController.h"
#import "ConfigurationController.h"

@interface SignUpViewController ()

@end

@implementation SignUpViewController
@synthesize txtName,txtEmail,txtMobileNumber,txtPassword,txtConfirmPassword,btnSignUp,btnSignUpFB,scrlView;

- (void)viewDidLoad {
    [super viewDidLoad];
    [[ConfigurationController sharedManager]textFieldsBorderCustomizing:self.scrlView];
    [btnSignUp.layer setCornerRadius:4.0];
    [btnSignUpFB.layer setCornerRadius:4.0];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationItem setTitle:@"Sign up"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnSignUpPressed:(id)sender
{
    [self performSegueWithIdentifier:@"phoneNumberView" sender:self];
}

- (IBAction)btnSignUpFBPressed:(id)sender
{
    [self performSegueWithIdentifier:@"phoneNumberView" sender:self];
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
