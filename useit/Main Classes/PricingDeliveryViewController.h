//
//  PricingDeliveryViewController.h
//  useit
//
//  Created by My lovely Maemae on 6/5/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PricingDeliveryViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *btn_Available;
@property (weak, nonatomic) IBOutlet UITextField *txt_Day1;
@property (weak, nonatomic) IBOutlet UITextField *txt_Day7;
@property (weak, nonatomic) IBOutlet UITextField *txt_Day30;
@property (weak, nonatomic) IBOutlet UITextField *txt_Cauzione;
@property (weak, nonatomic) IBOutlet UITextField *txt_Vendita;
@property (weak, nonatomic) IBOutlet UIButton *btn_Publish;

- (IBAction)OnCheck:(id)sender;

@end