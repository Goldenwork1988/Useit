//
//  SearchViewController.h
//  useit
//
//  Created by My lovely Maemae on 6/1/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideNavigationController.h"

@interface SearchViewController : UIViewController<UITextFieldDelegate, SlideNavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *myScrolleView;
@property (weak, nonatomic) IBOutlet UIButton *btn_Menu;
@property (weak, nonatomic) IBOutlet UITextField *txt_Search;
@property (weak, nonatomic) IBOutlet UIButton *btn_category;
@property (weak, nonatomic) IBOutlet UIButton *btn_Resion;
@property (weak, nonatomic) IBOutlet UIButton *btn_Province;
@property (weak, nonatomic) IBOutlet UIButton *btn_City;
@property (weak, nonatomic) IBOutlet UIButton *btn_FromDate;
@property (weak, nonatomic) IBOutlet UIButton *btn_UntilDate;
@property (weak, nonatomic) IBOutlet UIButton *btn_Search;

- (IBAction)OnCategory:(id)sender;
- (IBAction)OnSearch:(id)sender;



@end
