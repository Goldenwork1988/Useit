//
//  InsertionViewController.m
//  useit
//
//  Created by My lovely Maemae on 6/11/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import "InsertionViewController.h"
#import "InsertionTableViewCell.h"

@interface InsertionViewController ()

@end

@implementation InsertionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 200;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    InsertionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"insertionTableViewCell"];
    
//    NSMutableAttributedString* attributeString = [[NSMutableAttributedString alloc]initWithString:@"AndreaFaccina"];
//    [attributeString addAttribute:NSUnderlineStyleAttributeName
//                            value:[NSNumber numberWithInt:1]
//                            range:(NSRange){0,[attributeString length]}];
//    cell.lbl_Username.attributedText = attributeString;
//    [cell.btn_UserInfo addTarget:self action:@selector(OnUserInfo:) forControlEvents:UIControlEventTouchUpInside];
    
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
