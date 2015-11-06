//
//  ViewController.m
//  useit
//
//  Created by My lovely Maemae on 5/30/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import "AppDelegate.h"

#import "HomeViewController.h"
#import "HowItWorksViewController.h"
#import "SearchViewController.h"
#import "InsertAdsViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.btn_Shop.layer.borderWidth = 1.0f;
    self.btn_Shop.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.btn_how.layer.borderWidth = 1.0f;
    self.btn_how.layer.borderColor = [UIColor lightGrayColor].CGColor;
    [self.btn_Menu addTarget:[SlideNavigationController sharedInstance] action:@selector(toggleLeftMenu) forControlEvents:UIControlEventTouchUpInside];
}

-(void)viewWillAppear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)OnSearch:(id)sender {
    SearchViewController *searchView = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier:@"searchView"];
    [self.navigationController pushViewController:searchView animated:YES];
}

- (IBAction)OnInsert:(id)sender {
    InsertAdsViewController *insertView = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier:@"insertAdsView"];
    [self.navigationController pushViewController:insertView animated:YES];
}

- (IBAction)OnShop:(id)sender {
}

- (IBAction)OnHow:(id)sender {
    HowItWorksViewController *howView = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier:@"howView"];
    [self.navigationController pushViewController:howView animated:YES];
}

- (BOOL)slideNavigationControllerShouldDisplayLeftMenu{
    return YES;
}

@end
