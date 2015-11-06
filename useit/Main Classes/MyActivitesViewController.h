//
//  MyActivitesViewController.h
//  useit
//
//  Created by My lovely Maemae on 6/1/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideNavigationController.h"

@interface MyActivitesViewController : UIViewController<SlideNavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIButton *btn_Menu;

- (IBAction)OnActivity:(id)sender;

@end
