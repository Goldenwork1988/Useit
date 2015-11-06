//
//  MyMessagesViewController.m
//  useit
//
//  Created by My lovely Maemae on 6/1/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import "MyMessagesViewController.h"
#import "TopDropDownTableCellTableViewCell.h"

@interface MyMessagesViewController (){
    NSMutableArray *titleArray;
    NSMutableArray *contentArray;
}

@end

@implementation MyMessagesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.btn_Menu addTarget:[SlideNavigationController sharedInstance] action:@selector(toggleLeftMenu) forControlEvents:UIControlEventTouchUpInside];
    
    titleArray = [[NSMutableArray alloc] initWithObjects:@"IN ARRIVO", @"Dagli utenti", @"Da useit", @"INVIATI", nil];
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
    if (indexPath.row == 1 || indexPath.row == 2) {
        UIView *bankView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, 50)];
        bankView.backgroundColor = [UIColor whiteColor];
        [cell addSubview:bankView];
        
        [cell.lbl_Title setFrame:CGRectMake(cell.lbl_Title.frame.origin.x + 20, cell.lbl_Title.frame.origin.y, cell.lbl_Title.frame.size.width, cell.lbl_Title.frame.size.height)];
        [cell.lbl_Number setFrame:CGRectMake(cell.lbl_Number.frame.origin.x + 20, cell.lbl_Number.frame.origin.y, cell.lbl_Number.frame.size.width, cell.lbl_Number.frame.size.height)];
    }
    if (indexPath.row == 3) {
        cell.lbl_Number.text = @"0 messaggi";
        cell.lineView.hidden = TRUE;
    }else{
        cell.lbl_Number.text = @"0 messaggi da leggere";
    }
    
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
