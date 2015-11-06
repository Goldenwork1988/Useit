//
//  MyActivitesViewController.m
//  useit
//
//  Created by My lovely Maemae on 6/1/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import "AppDelegate.h"
#import "MyActivitesViewController.h"
#import "MyActivityDetailsViewController.h"

@interface MyActivitesViewController ()

@end

@implementation MyActivitesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.btn_Menu addTarget:[SlideNavigationController sharedInstance] action:@selector(toggleLeftMenu) forControlEvents:UIControlEventTouchUpInside];
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

- (IBAction)OnActivity:(id)sender {
    MyActivityDetailsViewController *myActivityDetailsView = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier:@"myActivityDetailsView"];
    UIButton *btn = (UIButton *) sender;
    if (btn.tag == 102) {
        myActivityDetailsView.str_Title = @"Oggetti dati a noleggio o venduti";
        myActivityDetailsView.str_Button = @"BUTTON nessun oggetto dato a noleggio o venduto.png";
    }else if(btn.tag == 103){
        myActivityDetailsView.str_Title = @"Oggetti presi a noleggio o acquistati";
        myActivityDetailsView.str_Button = @"BUTTON nessun oggetto preso a noleggio o acquistato.png";
    }else if(btn.tag == 105){
        myActivityDetailsView.str_Title = @"Servizi erogati";
        myActivityDetailsView.str_Button = @"BUTTON nessun servizio erogato.png";
    }else if(btn.tag == 106){
        myActivityDetailsView.str_Title = @"Servizi fruiti";
        myActivityDetailsView.str_Button = @"BUTTON nessun servizio fruito.png";
    }else if(btn.tag == 108){
        myActivityDetailsView.str_Title = @"Ospitalità offerta";
        myActivityDetailsView.str_Button = @"BUTTON nessuna ospitalità offerta.png";
    }else if(btn.tag == 109){
        myActivityDetailsView.str_Title = @"Ospitalità fruita";
        myActivityDetailsView.str_Button = @"BUTTON nessuna ospitalità fruita.png";
    }
    [self.navigationController pushViewController:myActivityDetailsView animated:YES];
}
@end
