//
//  MyInsertionsViewController.h
//  useit
//
//  Created by My lovely Maemae on 6/1/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideNavigationController.h"

@interface MyInsertionsViewController : UIViewController<UITableViewDelegate, UITableViewDataSource, SlideNavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIView *titleView;
@property (weak, nonatomic) IBOutlet UIButton *btn_menu;
@property (weak, nonatomic) IBOutlet UIButton *btn_Title;
@property (weak, nonatomic) IBOutlet UITableView *topTableView;

- (IBAction)OnTitle:(id)sender;

@end
