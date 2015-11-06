//
//  MyUcoinsViewController.m
//  useit
//
//  Created by My lovely Maemae on 6/1/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import "MyUcoinsViewController.h"

@interface MyUcoinsViewController ()     

@end

@implementation MyUcoinsViewController
@synthesize btn_EarnUcoin, btn_BuyUcoin, btn_SellUcoin;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.btn_Menu addTarget:[SlideNavigationController sharedInstance] action:@selector(toggleLeftMenu) forControlEvents:UIControlEventTouchUpInside];
    self.disponibiliView.layer.borderWidth = 1.0f;
    self.disponibiliView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    btn_EarnUcoin.layer.borderWidth = 1.0f;
    btn_EarnUcoin.layer.borderColor = [UIColor lightGrayColor].CGColor;
    btn_BuyUcoin.layer.borderWidth = 1.0f;
    btn_BuyUcoin.layer.borderColor = [UIColor lightGrayColor].CGColor;
    btn_SellUcoin.layer.borderWidth = 1.0f;
    btn_SellUcoin.layer.borderColor = [UIColor lightGrayColor].CGColor;
    
    self.txt_BuyUcoin.layer.borderWidth = 1.0f;
    self.txt_BuyUcoin.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.txt_SellUcoin.layer.borderWidth = 1.0f;
    self.txt_SellUcoin.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.txt_Email.layer.borderWidth = 1.0f;
    self.txt_Email.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.txt_Iban.layer.borderWidth = 1.0f;
    self.txt_Iban.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.txt_OwnerName.layer.borderWidth = 1.0f;
    self.txt_OwnerName.layer.borderColor = [UIColor lightGrayColor].CGColor;
    
    self.btn_Check_Bank.selected = TRUE;
    self.btn_Check_Paypal.selected = FALSE;
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
