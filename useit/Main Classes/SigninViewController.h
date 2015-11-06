//
//  SigninViewController.h
//  useit
//
//  Created by My lovely Maemae on 6/1/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SigninViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *LoginView;
@property (weak, nonatomic) IBOutlet UITextField *txt_Email;
@property (weak, nonatomic) IBOutlet UITextField *txt_Password;
@property (weak, nonatomic) IBOutlet UIButton *btn_loginwithemail;
@property (weak, nonatomic) IBOutlet UIButton *btn_register;

- (IBAction)OnBack:(id)sender;
- (IBAction)OnLoginWithFacebook:(id)sender;
- (IBAction)OnLoginWithEmail:(id)sender;
- (IBAction)OnForgotPassword:(id)sender;
- (IBAction)OnLogin:(id)sender;
- (IBAction)OnCancel:(id)sender;

@end
