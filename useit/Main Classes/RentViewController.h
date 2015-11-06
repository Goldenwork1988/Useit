//
//  RentViewController.h
//  useit
//
//  Created by My lovely Maemae on 6/9/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RentViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lbl_Title;
@property (weak, nonatomic) IBOutlet UILabel *lbl_Username;
@property (weak, nonatomic) IBOutlet UIButton *btn_FromDate;
@property (weak, nonatomic) IBOutlet UIButton *btn_ToDate;
@property (weak, nonatomic) IBOutlet UIButton *btn_RentBuy;

- (IBAction)OnBack:(id)sender;
- (IBAction)OnRentBuy:(id)sender;

@property (strong, nonatomic) NSString *str_Title;
@end
