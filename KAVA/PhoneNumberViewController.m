//
//  PhoneNumberViewController.m
//  KAVA
//
//  Created by KNET-MACPRO2 on 06/02/16.
//  Copyright © 2016 KNET-MACPRO2. All rights reserved.
//

#import "PhoneNumberViewController.h"
#import "ConfigurationController.h"

@interface PhoneNumberViewController ()

@end

@implementation PhoneNumberViewController
@synthesize txtCountryName,txtCountryCode,txtPhoneNumber,scrlView;

- (void)viewDidLoad {
    [super viewDidLoad];
    [txtPhoneNumber becomeFirstResponder];
    [[ConfigurationController sharedManager]textFieldsBorderCustomizing:self.scrlView];
    barBtnDone = [[UIBarButtonItem alloc]
                  initWithTitle:@"Done"
                  style:UIBarButtonItemStyleDone
                  target:self
                  action:@selector(btnDonePressed:)];
    [self.navigationItem setRightBarButtonItem:barBtnDone];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationItem setTitle:@"Your Phone Number"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnDonePressed:(id)sender
{
    NSLog(@"btnDonePressed");
    [self performSegueWithIdentifier:@"PhoneNoVerify" sender:self];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField becomeFirstResponder];
    return NO;
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
