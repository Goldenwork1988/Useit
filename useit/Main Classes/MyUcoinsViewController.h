//
//  MyUcoinsViewController.h
//  useit
//
//  Created by My lovely Maemae on 6/1/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideNavigationController.h"

@interface MyUcoinsViewController : UIViewController<SlideNavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *btn_Menu;
@property (weak, nonatomic) IBOutlet UIView *disponibiliView;
@property (weak, nonatomic) IBOutlet UIButton *btn_EarnUcoin;
@property (weak, nonatomic) IBOutlet UIButton *btn_BuyUcoin;
@property (weak, nonatomic) IBOutlet UIButton *btn_SellUcoin;
@property (weak, nonatomic) IBOutlet UITextField *txt_BuyUcoin;
@property (weak, nonatomic) IBOutlet UITextField *txt_SellUcoin;
@property (weak, nonatomic) IBOutlet UITextField *txt_Email;
@property (weak, nonatomic) IBOutlet UITextField *txt_OwnerName;
@property (weak, nonatomic) IBOutlet UITextField *txt_Iban;
@property (weak, nonatomic) IBOutlet UIButton *btn_Check_Paypal;
@property (weak, nonatomic) IBOutlet UIButton *btn_Check_Bank;

@end
