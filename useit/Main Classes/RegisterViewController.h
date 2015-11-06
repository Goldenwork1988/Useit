//
//  RegisterViewController.h
//  useit
//
//  Created by My lovely Maemae on 6/1/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txt_Email;
@property (weak, nonatomic) IBOutlet UITextField *txt_Password;
@property (weak, nonatomic) IBOutlet UITextField *txt_Nickname;
@property (weak, nonatomic) IBOutlet UIButton *btn_CheckRead;
@property (weak, nonatomic) IBOutlet UIButton *btn_CheckValidate;
@property (weak, nonatomic) IBOutlet UIButton *btn_Register;

- (IBAction)OnBack:(id)sender;
- (IBAction)OnCheck_Privacy:(id)sender;
- (IBAction)OnCheck_Validate:(id)sender;
- (IBAction)OnRegister:(id)sender;
@end
