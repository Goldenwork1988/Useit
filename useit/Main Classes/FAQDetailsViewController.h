//
//  FAQDetailsViewController.h
//  useit
//
//  Created by My lovely Maemae on 6/1/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FAQDetailsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lbl_Title;
@property (strong, nonatomic) NSString *str_Title;

- (IBAction)OnBack:(id)sender;
@end
