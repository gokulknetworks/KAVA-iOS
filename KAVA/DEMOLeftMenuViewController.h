//
//  DEMOLeftMenuViewController.h
//  RESideMenuStoryboards
//
//  Created by Roman Efimov on 10/9/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RESideMenu.h"
#import <MessageUI/MessageUI.h>

@interface DEMOLeftMenuViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, RESideMenuDelegate, MFMailComposeViewControllerDelegate>
{
    UIAlertView *alertMsg;
    NSArray *titles;
    UILabel *lblProfileName,*lblCurrentLocation;
}

@property (nonatomic, retain) IBOutlet UIImageView *bgImage;
@end