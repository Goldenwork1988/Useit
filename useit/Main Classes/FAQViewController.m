//
//  FAQViewController.m
//  useit
//
//  Created by My lovely Maemae on 6/1/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import "AppDelegate.h"

#import "FAQViewController.h"
#import "FAQDetailsViewController.h"

@interface FAQViewController (){
    NSMutableArray *faqArray;
}

@end

@implementation FAQViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    faqArray = [[NSMutableArray alloc] initWithObjects:@"useit in generale", @"Registrazione/Login e Profilo", @"Garanzia e Cauzione", @"Sicurezza e affidabilita", @"u-coin", @"I premi di useit", @"Pubblicazione inserzioni", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if([faqArray count] == 0){
        return 0;
    }else{
        return [faqArray count];
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FAQCell"];
    cell.textLabel.text = [NSString stringWithFormat:@"%d. %@", (int)indexPath.row+1, faqArray[(int)indexPath.row]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    FAQDetailsViewController *detailsView = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier:@"FAQDetailView"];
    detailsView.str_Title = faqArray[(int)indexPath.row];
    [self.navigationController pushViewController:detailsView animated:YES];
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
