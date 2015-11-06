//
//  RegisterViewController.m
//  ;
//
//  Created by My lovely Maemae on 6/1/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.btn_Register.layer.borderWidth = 1.0f;
    self.btn_Register.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.btn_CheckRead.selected = FALSE;
    self.btn_CheckValidate.selected = FALSE;
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

- (IBAction)OnCheck_Privacy:(id)sender {
    if(self.btn_CheckRead.selected == TRUE){
        self.btn_CheckRead.selected = FALSE;
    }else{
        self.btn_CheckRead.selected = TRUE;
    }
}

- (IBAction)OnCheck_Validate:(id)sender {
    if(self.btn_CheckValidate.selected == TRUE){
        self.btn_CheckValidate.selected = FALSE;
    }else{
        self.btn_CheckValidate.selected = TRUE;
    }
}

- (IBAction)OnRegister:(id)sender {
}
@end
