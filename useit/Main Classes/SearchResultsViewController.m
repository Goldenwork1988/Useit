//
//  SearchResultsViewController.m
//  useit
//
//  Created by My lovely Maemae on 6/1/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import "AppDelegate.h"
#import "SearchResultsViewController.h"
#import "SearchResultTableViewCell.h"
#import "ObjectDetailsViewController.h"
#import "InformationViewController.h"

@interface SearchResultsViewController ()

@end

@implementation SearchResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)slideNavigationControllerShouldDisplayLeftMenu{
    return YES;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 180;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SearchResultTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"searchCell"];
    
    NSMutableAttributedString* attributeString = [[NSMutableAttributedString alloc]initWithString:@"AndreaFaccina"];
    [attributeString addAttribute:NSUnderlineStyleAttributeName
                            value:[NSNumber numberWithInt:1]
                            range:(NSRange){0,[attributeString length]}];
    cell.lbl_Username.attributedText = attributeString;
    [cell.btn_UserInfo addTarget:self action:@selector(OnUserInfo:) forControlEvents:UIControlEventTouchUpInside];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    ObjectDetailsViewController *objectDetailsView = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier:@"objectDetailsView"];
    [self.navigationController pushViewController:objectDetailsView animated:YES];

}

-(void)OnUserInfo:(id) sender{
    InformationViewController *informationView = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier:@"informationView"];
    [self.navigationController pushViewController:informationView animated:YES];
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
