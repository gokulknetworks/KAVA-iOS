//
//  ConfigurationController.m
//  KAVA
//
//  Created by KNET-MACPRO2 on 04/02/16.
//  Copyright © 2016 KNET-MACPRO2. All rights reserved.
//

#import "ConfigurationController.h"
#import <UIKit/UIKit.h>

static ConfigurationController *sharedInstance = nil;
@implementation ConfigurationController

+ (ConfigurationController *)sharedManager
{
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        if (sharedInstance == nil)
        {
            sharedInstance = [[self alloc] initSingleton];
        }
    });
    return sharedInstance;
}

- (id)initSingleton
{
    self = [super init];
    if (self != nil)
    {
        
    }
    return self;
}

- (void)navigationHeader
{
    [[UINavigationBar appearance] setTintColor:[UIColor colorWithRed:252.0/255.0 green:250.0/255.0 blue:252.0/255.0 alpha:1]];
    NSShadow *shadow = [[NSShadow alloc] init];
//    shadow.shadowColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.8];
    shadow.shadowOffset = CGSizeMake(0,0);
    [[UINavigationBar appearance] setTranslucent:YES];
    [[UINavigationBar appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:
                                                           [UIColor colorWithRed:252.0/255.0 green:250.0/255.0 blue:252.0/255.0 alpha:1], NSForegroundColorAttributeName,
                                                           shadow, NSShadowAttributeName,
                                                           [UIFont boldSystemFontOfSize:18], NSFontAttributeName, nil]];
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"header.png"] forBarMetrics:UIBarMetricsDefault];
}

- (void)textFieldsBorderCustomizing:(UIView *)viewCurrent
{
    UIColor *borderColor = [UIColor lightGrayColor];
    UIColor *placeHolderColor = [UIColor colorWithRed:148.0/255.0 green:148.0/255.0 blue:148.0/255.0 alpha:1];
    for (UIView *viewTypes in [viewCurrent subviews])
    {
        if ([viewTypes isKindOfClass:[UITextField class]])
        {
            @autoreleasepool {
                UITextField *txtFld = (UITextField *)viewTypes;
                [txtFld.layer setBorderColor:borderColor.CGColor];
                [txtFld.layer setBorderWidth:1.0];
                [txtFld.layer setMasksToBounds:YES];
                [txtFld.layer setCornerRadius:4];
                UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 20)];
                txtFld.leftView = paddingView;
                [txtFld setLeftView:paddingView];
                [txtFld setLeftViewMode:UITextFieldViewModeAlways];
                txtFld.attributedPlaceholder = [[NSAttributedString alloc] initWithString:txtFld.placeholder attributes:@{NSForegroundColorAttributeName:placeHolderColor}];        
            }
        }
    }
}

- (UIButton *)btnMenusCustomizing
{
    UIButton *btnMenuBack =  [UIButton buttonWithType:UIButtonTypeCustom];
    [btnMenuBack setImage:[UIImage imageNamed:@"menu-button.png"] forState:UIControlStateNormal];
    [btnMenuBack setFrame:CGRectMake(0, 0, 22 ,17)];
    return btnMenuBack;
}



@end
