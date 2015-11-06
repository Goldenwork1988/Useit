//
//  SearchViewController.m
//  useit
//
//  Created by My lovely Maemae on 6/1/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import "AppDelegate.h"
#import "SearchViewController.h"
#import "SearchResultsViewController.h"

@interface SearchViewController ()

@end

@implementation SearchViewController
@synthesize btn_category, btn_Resion, btn_Province, btn_City, btn_FromDate, btn_UntilDate, btn_Search, txt_Search;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.btn_Menu addTarget:[SlideNavigationController sharedInstance] action:@selector(toggleLeftMenu) forControlEvents:UIControlEventTouchUpInside];
    self.myScrolleView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height + 50);
    txt_Search.layer.borderColor = [UIColor lightGrayColor].CGColor;
    txt_Search.layer.borderWidth = 1.0f;
    btn_category.layer.borderColor = [UIColor lightGrayColor].CGColor;
    btn_category.layer.borderWidth = 1.0f;
    btn_Resion.layer.borderColor = [UIColor lightGrayColor].CGColor;
    btn_Resion.layer.borderWidth = 1.0f;
    btn_Province.layer.borderColor = [UIColor lightGrayColor].CGColor;
    btn_Province.layer.borderWidth = 1.0f;
    btn_City.layer.borderColor = [UIColor lightGrayColor].CGColor;
    btn_City.layer.borderWidth = 1.0f;
    btn_FromDate.layer.borderColor = [UIColor lightGrayColor].CGColor;
    btn_FromDate.layer.borderWidth = 1.0f;
    btn_UntilDate.layer.borderColor = [UIColor lightGrayColor].CGColor;
    btn_UntilDate.layer.borderWidth = 1.0f;
    btn_UntilDate.layer.borderColor = [UIColor lightGrayColor].CGColor;
    btn_UntilDate.layer.borderWidth = 1.0f;
    btn_Search.layer.borderColor = [UIColor lightGrayColor].CGColor;
    btn_Search.layer.borderWidth = 1.0f;
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return  YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)slideNavigationControllerShouldDisplayLeftMenu{
    return YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)OnCategory:(id)sender {
}

- (IBAction)OnSearch:(id)sender {
    SearchResultsViewController *searchResultView = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier:@"searchResultView"];
    [self.navigationController pushViewController:searchResultView animated:YES];
}
@end
