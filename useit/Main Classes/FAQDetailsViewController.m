//
//  FAQDetailsViewController.m
//  useit
//
//  Created by My lovely Maemae on 6/1/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import "FAQDetailsViewController.h"

@interface FAQDetailsViewController ()

@end

@implementation FAQDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.lbl_Title.text = self.str_Title;
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

- (IBAction)OnBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
