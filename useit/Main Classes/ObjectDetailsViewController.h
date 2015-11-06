//
//  ObjectDetailsViewController.h
//  useit
//
//  Created by My lovely Maemae on 6/9/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ObjectDetailsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;
@property (weak, nonatomic) IBOutlet UILabel *lbl_Username;
@property (weak, nonatomic) IBOutlet UIButton *btn_Rent;
@property (weak, nonatomic) IBOutlet UIButton *btn_Rent1;
@property (weak, nonatomic) IBOutlet UIButton *btn_Purchase1;

- (IBAction)OnBack:(id)sender;
- (IBAction)OnRent:(id)sender;
- (IBAction)OnBuy:(id)sender;
@end
