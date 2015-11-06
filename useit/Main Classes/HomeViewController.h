//
//  ViewController.h
//  useit
//
//  Created by My lovely Maemae on 5/30/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController<SlideNavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *btn_Menu;
@property (weak, nonatomic) IBOutlet UIButton *btn_Shop;
@property (weak, nonatomic) IBOutlet UIButton *btn_how;

- (IBAction)OnSearch:(id)sender;
- (IBAction)OnInsert:(id)sender;
- (IBAction)OnShop:(id)sender;
- (IBAction)OnHow:(id)sender;


@end

