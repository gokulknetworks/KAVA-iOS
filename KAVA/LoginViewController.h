//
//  LoginViewController.h
//  KAVA
//
//  Created by KNET-MACPRO2 on 05/02/16.
//  Copyright © 2016 KNET-MACPRO2. All rights reserved.
//

#import "ViewController.h"

@interface LoginViewController : ViewController
{
    
}
@property (weak, nonatomic) IBOutlet UITextField *txtUserId;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;
@property (weak, nonatomic) IBOutlet UIButton *btnLogin;
@property (weak, nonatomic) IBOutlet UIScrollView *scrlView;
@end
