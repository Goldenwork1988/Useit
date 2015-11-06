//
//  ProfileViewController.h
//  useit
//
//  Created by My lovely Maemae on 6/4/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;
@property (weak, nonatomic) IBOutlet UIImageView *img_Profile;
@property (weak, nonatomic) IBOutlet UILabel *lbl_Code;
@property (weak, nonatomic) IBOutlet UIView *personalDataView;
@property (weak, nonatomic) IBOutlet UITextField *txt_FirstName;
@property (weak, nonatomic) IBOutlet UITextField *txt_Surname;
@property (weak, nonatomic) IBOutlet UIButton *btn_Region;
@property (weak, nonatomic) IBOutlet UIButton *btn_Province;
@property (weak, nonatomic) IBOutlet UIButton *btn_City;
@property (weak, nonatomic) IBOutlet UITextField *txt_Address;
@property (weak, nonatomic) IBOutlet UITextField *txt_PostalCode;
@property (weak, nonatomic) IBOutlet UIView *ContactDataView;
@property (weak, nonatomic) IBOutlet UILabel *lbl_Note;
@property (weak, nonatomic) IBOutlet UITextField *txt_Phonenumber;
@property (weak, nonatomic) IBOutlet UITextField *txt_Email;
@property (weak, nonatomic) IBOutlet UIButton *btn_VerifyPhone;
@property (weak, nonatomic) IBOutlet UIButton *btn_VerifyEmail;
@property (weak, nonatomic) IBOutlet UIView *registerDataView;
@property (weak, nonatomic) IBOutlet UITextField *txt_Nickname;
@property (weak, nonatomic) IBOutlet UITextField *txt_RegisterEmail;
@property (weak, nonatomic) IBOutlet UITextField *txt_Code;


@end
