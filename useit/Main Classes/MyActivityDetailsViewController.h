//
//  MyActivityDetailsViewController.h
//  useit
//
//  Created by My lovely Maemae on 6/8/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyActivityDetailsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lbl_Title;
@property (weak, nonatomic) IBOutlet UIButton *btn_NoActivity;

- (IBAction)OnBack:(id)sender;

@property (strong, nonatomic) NSString *str_Title;
@property (strong, nonatomic) NSString *str_Button;
@end
