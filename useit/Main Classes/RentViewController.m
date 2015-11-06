//
//  RentViewController.m
//  useit
//
//  Created by My lovely Maemae on 6/9/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import "RentViewController.h"

@interface RentViewController ()

@end

@implementation RentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.lbl_Title.text = self.str_Title;
    NSMutableAttributedString* attributeString = [[NSMutableAttributedString alloc]initWithString:@"AndreaFaccina"];
    [attributeString addAttribute:NSUnderlineStyleAttributeName
                            value:[NSNumber numberWithInt:1]
                            range:(NSRange){0,[attributeString length]}];
    self.lbl_Username.attributedText = attributeString;
    
    self.btn_FromDate.layer.borderColor = [UIColor grayColor].CGColor;
    self.btn_FromDate.layer.borderWidth = 1.0f;
    self.btn_FromDate.titleLabel.text = @"Scegli una data";
    self.btn_ToDate.layer.borderColor = [UIColor grayColor].CGColor;
    self.btn_ToDate.layer.borderWidth = 1.0f;
    self.btn_ToDate.titleLabel.text = @"12 Giu 2015";
    
    if ([self.str_Title isEqualToString:@"Noleggia"]) {
        [self.btn_RentBuy setBackgroundImage:[UIImage imageNamed:@"btn_Rent.png"] forState:UIControlStateNormal];
    }else{
        [self.btn_RentBuy setBackgroundImage:[UIImage imageNamed:@"btn_Buy_Ucoin1.png"] forState:UIControlStateNormal];
    }
    self.btn_RentBuy.layer.borderColor = [UIColor grayColor].CGColor;
    self.btn_RentBuy.layer.borderWidth = 1.0f;
    
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

- (IBAction)OnBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)OnRentBuy:(id)sender {
}
@end
