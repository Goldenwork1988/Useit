//
//  ProfileViewController.m
//  useit
//
//  Created by My lovely Maemae on 6/4/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import "AppDelegate.h"

#import "ProfileViewController.h"
#import "ProfileManageViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController
@synthesize img_Profile, lbl_Code, txt_FirstName, txt_Surname, txt_Address, txt_PostalCode, btn_Region, btn_City, btn_Province, lbl_Note, txt_Phonenumber, txt_Email, btn_VerifyPhone, btn_VerifyEmail, txt_Nickname, txt_RegisterEmail, txt_Code;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    ProfileManageViewController *profileManageView = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier:@"profileManageView"];
    self.myScrollView.contentSize = CGSizeMake(300, 1100);
    img_Profile.layer.cornerRadius = 50.0f;
    img_Profile.layer.masksToBounds = YES;
    
    self.personalDataView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.personalDataView.layer.borderWidth = 1.0f;
    txt_FirstName.layer.borderColor = [UIColor lightGrayColor].CGColor;
    txt_FirstName.layer.borderWidth = 1.0f;
    txt_Surname.layer.borderColor = [UIColor lightGrayColor].CGColor;
    txt_Surname.layer.borderWidth = 1.0f;
    txt_Address.layer.borderColor = [UIColor lightGrayColor].CGColor;
    txt_Address.layer.borderWidth = 1.0f;
    txt_PostalCode.layer.borderColor = [UIColor lightGrayColor].CGColor;
    txt_PostalCode.layer.borderWidth = 1.0f;
    btn_Region.layer.borderColor = [UIColor lightGrayColor].CGColor;
    btn_Region.layer.borderWidth = 1.0f;
    btn_Province.layer.borderColor = [UIColor lightGrayColor].CGColor;
    btn_Province.layer.borderWidth = 1.0f;
    btn_City.layer.borderColor = [UIColor lightGrayColor].CGColor;
    btn_City.layer.borderWidth = 1.0f;
    
    self.ContactDataView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.ContactDataView.layer.borderWidth = 1.0f;
    txt_Phonenumber.layer.borderColor = [UIColor lightGrayColor].CGColor;
    txt_Phonenumber.layer.borderWidth = 1.0f;
    txt_Email.layer.borderColor = [UIColor lightGrayColor].CGColor;
    txt_Email.layer.borderWidth = 1.0f;
    btn_VerifyEmail.selected = TRUE;
    
    self.registerDataView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.registerDataView.layer.borderWidth = 1.0f;
    txt_Nickname.layer.borderColor = [UIColor lightGrayColor].CGColor;
    txt_Nickname.layer.borderWidth = 1.0f;
    txt_RegisterEmail.layer.borderColor = [UIColor lightGrayColor].CGColor;
    txt_RegisterEmail.layer.borderWidth = 1.0f;
    txt_Code.layer.borderColor = [UIColor lightGrayColor].CGColor;
    txt_Code.layer.borderWidth = 1.0f;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
