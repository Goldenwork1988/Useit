//
//  AvailabilityViewController.h
//  useit
//
//  Created by My lovely Maemae on 6/5/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AvailabilityViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lbl_Content;
@property (weak, nonatomic) IBOutlet UIButton *btn_Radio1;
@property (weak, nonatomic) IBOutlet UIButton *btn_Radio2;
@property (weak, nonatomic) IBOutlet UIButton *btn_Radio3;
@property (weak, nonatomic) IBOutlet UIButton *btn_Publish;

- (IBAction)OnRadio1:(id)sender;
- (IBAction)OnRadio2:(id)sender;
- (IBAction)OnRadio3:(id)sender;

@end
