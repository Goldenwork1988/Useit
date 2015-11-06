//
//  SigninViewController.m
//  useit
//
//  Created by My lovely Maemae on 6/1/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//
#import "AppDelegate.h"

#import "SigninViewController.h"
#import "HomeViewController.h"

@interface SigninViewController ()

@end

@implementation SigninViewController
@synthesize txt_Email, txt_Password;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.btn_loginwithemail.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.btn_loginwithemail.layer.borderWidth = 1.0f;
    self.btn_register.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.btn_register.layer.borderWidth = 1.0f;
    
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

- (IBAction)OnLoginWithFacebook:(id)sender {
    [AppDelegate delegate].status = @"LOGIN";
    HomeViewController *homeView = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier:@"homeView"];
    [self.navigationController pushViewController:homeView animated:YES];
}

- (IBAction)OnLoginWithEmail:(id)sender {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationBeginsFromCurrentState:TRUE];
    NSLog(@"%d", (int)self.LoginView.frame.origin.y);
    self.LoginView.frame = CGRectMake(self.LoginView.frame.origin.x, self.LoginView.frame.origin.y + 290, self.LoginView.frame.size.width, self.LoginView.frame.size.height);
    
    [UIView commitAnimations];
}

- (IBAction)OnForgotPassword:(id)sender {
}

- (IBAction)OnLogin:(id)sender {
}

- (IBAction)OnCancel:(id)sender {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationBeginsFromCurrentState:TRUE];
    NSLog(@"%d", (int)self.LoginView.frame.origin.y);
    self.LoginView.frame = CGRectMake(self.LoginView.frame.origin.x, self.LoginView.frame.origin.y - 290, self.LoginView.frame.size.width, self.LoginView.frame.size.height);
    
    [UIView commitAnimations];
}
@end
