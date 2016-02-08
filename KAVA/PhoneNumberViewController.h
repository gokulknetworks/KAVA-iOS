//
//  PhoneNumberViewController.h
//  KAVA
//
//  Created by KNET-MACPRO2 on 06/02/16.
//  Copyright © 2016 KNET-MACPRO2. All rights reserved.
//

#import "ViewController.h"

@interface PhoneNumberViewController : ViewController<UITextFieldDelegate>
{
    UIBarButtonItem *barBtnDone; 
}
@property (weak, nonatomic) IBOutlet UITextField *txtCountryName;
@property (weak, nonatomic) IBOutlet UITextField *txtCountryCode;
@property (weak, nonatomic) IBOutlet UITextField *txtPhoneNumber;
@property (weak, nonatomic) IBOutlet UIScrollView *scrlView;

@end
