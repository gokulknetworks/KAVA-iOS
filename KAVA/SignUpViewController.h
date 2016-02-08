//
//  SignUpViewController.h
//  KAVA
//
//  Created by KNET-MACPRO2 on 05/02/16.
//  Copyright © 2016 KNET-MACPRO2. All rights reserved.
//

#import "ViewController.h"

@interface SignUpViewController : ViewController
{
    
}
@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UITextField *txtEmail;
@property (weak, nonatomic) IBOutlet UITextField *txtMobileNumber;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;
@property (weak, nonatomic) IBOutlet UITextField *txtConfirmPassword;
@property (weak, nonatomic) IBOutlet UIButton *btnSignUp;
@property (weak, nonatomic) IBOutlet UIButton *btnSignUpFB;
@property (weak, nonatomic) IBOutlet UIScrollView *scrlView;

@end
