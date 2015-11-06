//
//  ProfileViewController.h
//  useit
//
//  Created by My lovely Maemae on 6/4/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileManageViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *btn_Share;
@property (weak, nonatomic) IBOutlet UIButton *btn_Save;
@property (weak, nonatomic) IBOutlet UIButton *btn_Help;

- (IBAction)OnBack:(id)sender;
@end
