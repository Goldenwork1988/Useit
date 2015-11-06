//
//  ObjectDetailsViewController.m
//  useit
//
//  Created by My lovely Maemae on 6/9/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import "AppDelegate.h"
#import "ObjectDetailsViewController.h"
#import "RentViewController.h"

@interface ObjectDetailsViewController ()

@end

@implementation ObjectDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.myScrollView.contentSize = CGSizeMake(320, 620);
    NSMutableAttributedString* attributeString = [[NSMutableAttributedString alloc]initWithString:@"AndreaFaccina"];
    [attributeString addAttribute:NSUnderlineStyleAttributeName
                            value:[NSNumber numberWithInt:1]
                            range:(NSRange){0,[attributeString length]}];
    self.lbl_Username.attributedText = attributeString;
    self.btn_Rent.layer.borderColor = [UIColor grayColor].CGColor;
    self.btn_Rent.layer.borderWidth = 1.0f;
    self.btn_Rent1.layer.borderColor = [UIColor grayColor].CGColor;
    self.btn_Rent1.layer.borderWidth = 1.0f;
    self.btn_Purchase1.layer.borderColor = [UIColor grayColor].CGColor;
    self.btn_Purchase1.layer.borderWidth = 1.0f;
    
    self.btn_Rent.hidden = TRUE;
    self.btn_Rent1.hidden = FALSE;
    self.btn_Purchase1.hidden = FALSE;
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

- (IBAction)OnRent:(id)sender {
    RentViewController *rentView = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier:@"rentView"];
    rentView.str_Title = @"Noleggia";
    [self.navigationController pushViewController:rentView animated:YES];
}

- (IBAction)OnBuy:(id)sender {
    RentViewController *rentView = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier:@"rentView"];
    rentView.str_Title = @"Acquista";
    [self.navigationController pushViewController:rentView animated:YES];
}
@end
