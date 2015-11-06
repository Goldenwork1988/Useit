//
//  PricingDeliveryViewController.m
//  useit
//
//  Created by My lovely Maemae on 6/5/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import "PricingDeliveryViewController.h"

@interface PricingDeliveryViewController ()

@end

@implementation PricingDeliveryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.btn_Available.selected = FALSE;
    
    self.txt_Day1.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.txt_Day1.layer.borderWidth = 1.0f;
    self.txt_Day7.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.txt_Day7.layer.borderWidth = 1.0f;
    self.txt_Day30.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.txt_Day30.layer.borderWidth = 1.0f;
    self.txt_Cauzione.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.txt_Cauzione.layer.borderWidth = 1.0f;
    self.txt_Vendita.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.txt_Vendita.layer.borderWidth = 1.0f;
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

- (IBAction)OnCheck:(id)sender {
    if (self.btn_Available.selected == TRUE) {
        self.btn_Available.selected = FALSE;
    }else{
        self.btn_Available.selected = TRUE;
    }
}


@end
