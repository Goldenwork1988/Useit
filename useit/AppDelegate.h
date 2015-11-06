//
//  AppDelegate.h
//  useit
//
//  Created by My lovely Maemae on 5/30/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "SlideNavigationController.h"
#import "LeftMenuViewController.h"

#define IS_IPHONE_4 ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )480 ) < DBL_EPSILON )

#define IS_IPHONE_5 ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 ) < DBL_EPSILON )

#define IS_IPHONE_6 ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )667 ) < DBL_EPSILON )

#define IS_IPHONE_6PLUS ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )736 ) < DBL_EPSILON )

@interface AppDelegate : UIResponder <UIApplicationDelegate>

+(AppDelegate *) delegate;
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UIStoryboard *storyboard;
@property (strong, nonatomic) NSString *status;
@end

