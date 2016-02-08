//
//  ViewController.m
//  KAVA
//
//  Created by KNET-MACPRO2 on 04/02/16.
//  Copyright © 2016 KNET-MACPRO2. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize btnLogin,btnSignUp;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [btnLogin.layer setCornerRadius:4.0];
    [btnSignUp.layer setCornerRadius:4.0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnLogin:(id)sender
{
    [self performSegueWithIdentifier:@"loginView" sender:self];
}

- (IBAction)btnSignUp:(id)sender
{
    [self performSegueWithIdentifier:@"SignUpView" sender:self];
}
@end
