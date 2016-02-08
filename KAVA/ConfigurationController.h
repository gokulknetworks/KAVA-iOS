//
//  ConfigurationController.h
//  KAVA
//
//  Created by KNET-MACPRO2 on 04/02/16.
//  Copyright © 2016 KNET-MACPRO2. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ConfigurationController : NSObject
{
    
}
+ (ConfigurationController *)sharedManager;
- (void)navigationHeader;
- (void)textFieldsBorderCustomizing:(UIView *)viewCurrent;
- (UIButton *)btnMenusCustomizing;
@end
