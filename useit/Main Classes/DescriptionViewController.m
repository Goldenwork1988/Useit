//
//  DescriptionViewController.m
//  useit
//
//  Created by My lovely Maemae on 6/5/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import "DescriptionViewController.h"

@interface DescriptionViewController ()

@end

@implementation DescriptionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.myScrollView.contentSize = CGSizeMake(320, 550);
    self.btn_Object.selected = TRUE;
    self.btn_Service.selected = FALSE;
    self.btn_Hospitality.selected = FALSE;
    self.btn_Address1.selected = TRUE;
    self.btn_Address2.selected = FALSE;
    self.btn_Select_Category.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.btn_Select_Category.layer.borderWidth = 1.0f;
    self.txt_RentingName.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.txt_RentingName.layer.borderWidth = 1.0f;
    self.txt_RentingDescribe.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.txt_RentingDescribe.layer.borderWidth = 1.0f;
    self.txt_Address1.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.txt_Address1.layer.borderWidth = 1.0f;
    self.txt_Address2.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.txt_Address2.layer.borderWidth = 1.0f;
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

- (IBAction)OnObject:(id)sender {
    self.btn_Object.selected = TRUE;
    self.btn_Service.selected = FALSE;
    self.btn_Hospitality.selected = FALSE;
}

- (IBAction)OnService:(id)sender {
    self.btn_Object.selected = FALSE;
    self.btn_Service.selected = TRUE;
    self.btn_Hospitality.selected = FALSE;
}

- (IBAction)OnHospitality:(id)sender {
    self.btn_Object.selected = FALSE;
    self.btn_Service.selected = FALSE;
    self.btn_Hospitality.selected = TRUE;
}
@end
