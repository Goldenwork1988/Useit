//
//  DescriptionViewController.h
//  useit
//
//  Created by My lovely Maemae on 6/5/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DescriptionViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;
@property (weak, nonatomic) IBOutlet UIButton *btn_Object;
@property (weak, nonatomic) IBOutlet UIButton *btn_Service;
@property (weak, nonatomic) IBOutlet UIButton *btn_Hospitality;
@property (weak, nonatomic) IBOutlet UIButton *btn_Select_Category;
@property (weak, nonatomic) IBOutlet UITextField *txt_RentingName;
@property (weak, nonatomic) IBOutlet UITextField *txt_RentingDescribe;
@property (weak, nonatomic) IBOutlet UIButton *btn_Address1;
@property (weak, nonatomic) IBOutlet UIButton *btn_Address2;
@property (weak, nonatomic) IBOutlet UITextField *txt_Address1;
@property (weak, nonatomic) IBOutlet UITextField *txt_Address2;

- (IBAction)OnObject:(id)sender;
- (IBAction)OnService:(id)sender;
- (IBAction)OnHospitality:(id)sender;
@end
