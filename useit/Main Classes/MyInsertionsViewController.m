//
//  MyInsertionsViewController.m
//  useit
//
//  Created by My lovely Maemae on 6/1/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import "MyInsertionsViewController.h"
#import "TopDropDownTableCellTableViewCell.h"

@interface MyInsertionsViewController (){
    NSMutableArray *titleArray;
    NSMutableArray *contentArray;
}

@end

@implementation MyInsertionsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.btn_menu addTarget:[SlideNavigationController sharedInstance] action:@selector(toggleLeftMenu) forControlEvents:UIControlEventTouchUpInside];
    
    titleArray = [[NSMutableArray alloc] initWithObjects:@"Tutte le mie inserzioni", @"Oggetti", @"Servizi", @"Ospitalità", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if([titleArray count] == 0){
        return 0;
    }else{
        return [titleArray count];
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TopDropDownTableCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"topCell"];
    cell.lbl_Title.text = titleArray[(int)indexPath.row];
//    cell.lbl_Number.text = 
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    self.btn_Title.titleLabel.text = titleArray[(int)indexPath.row];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationBeginsFromCurrentState:TRUE];
    NSLog(@"%d", (int)self.titleView.frame.origin.y);
    self.titleView.frame = CGRectMake(self.titleView.frame.origin.x, self.titleView.frame.origin.y - 270, self.titleView.frame.size.width, self.titleView.frame.size.height);

    [UIView commitAnimations];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)OnTitle:(id)sender {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationBeginsFromCurrentState:TRUE];
    NSLog(@"%d", (int)self.titleView.frame.origin.y);
    if (self.titleView.frame.origin.y == 70){
        self.titleView.frame = CGRectMake(self.titleView.frame.origin.x, self.titleView.frame.origin.y - 270, self.titleView.frame.size.width, self.titleView.frame.size.height);
    } else{
        self.titleView.frame = CGRectMake(self.titleView.frame.origin.x, self.titleView.frame.origin.y + 270, self.titleView.frame.size.width, self.titleView.frame.size.height);
    }
    
    [UIView commitAnimations];
}
@end
