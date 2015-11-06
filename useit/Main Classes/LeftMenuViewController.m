//
//  MenuViewController.m
//  SlideMenu
//
//  Created by Aryan Gh on 4/24/13.
//  Copyright (c) 2013 Aryan Ghassemi. All rights reserved.
//

#import "AppDelegate.h"
#import "LeftMenuViewController.h"
#import "SlideNavigationContorllerAnimatorFade.h"
#import "SlideNavigationContorllerAnimatorSlide.h"
#import "SlideNavigationContorllerAnimatorScale.h"
#import "SlideNavigationContorllerAnimatorScaleAndFade.h"
#import "SlideNavigationContorllerAnimatorSlideAndFade.h"

@implementation LeftMenuViewController{
    NSMutableArray *loginArray;
    NSMutableArray *logoutArray;
    CGFloat height_Top;
}

#pragma mark - UIViewController Methods -

- (id)initWithCoder:(NSCoder *)aDecoder{
	self.slideOutAnimationEnabled = YES;
	return [super initWithCoder:aDecoder];
}

- (void)viewDidLoad{
	[super viewDidLoad];
    
    [AppDelegate delegate].status = @"LOGIN";
    
    loginArray = [[NSMutableArray alloc] initWithObjects:@"Home", @"Profilo", @"Inserisci annuncio", @"Cerca", @"Shop del nuovo", @"Le mie inserzioni", @"Le mie attività", @"Messaggi", @"I miei u-coin", @"Come funziona", @"Garanzia e tutela", @"FAQ", @"Termini e condizioni d'uso", @"Scrivici", @"LOGOUT", nil];
    logoutArray = [[NSMutableArray alloc] initWithObjects:@"", @"Home", @"Inserisci annuncio", @"Cerca", @"Shop del nuovo", @"Come funziona", @"Garanzia e tutela", @"FAQ", @"Termini e condizioni d'uso", @"Scrivici", nil];

    self.tableView.backgroundColor = [UIColor whiteColor];
	
	self.view.layer.borderWidth = 1.0;
	self.view.layer.borderColor = [UIColor lightGrayColor].CGColor;
}

#pragma mark - UITableView Delegate & Datasrouce -
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if ([[AppDelegate delegate].status isEqualToString:@"LOGIN"]) {
        return 160;
    }else{
        return 0;
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
//    if ([[AppDelegate delegate].status isEqualToString:@"LOGIN"]) {
//        self.headerView.backgroundColor = [UIColor lightGrayColor];
//        self.img_Profile.layer.cornerRadius = 50.0f;
//        self.img_Profile.layer.masksToBounds = YES;
//        self.img_Profile.image = [UIImage imageNamed:@"img_profile.png"];
//        self.lbl_Name.text = @"NickName";
//        
//        return self.headerView;
//    }else{
//        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 50)];
//        view.backgroundColor = [UIColor lightGrayColor];
//        UIImageView *img_profile =[[UIImageView alloc] initWithFrame:CGRectMake(10, 5, 40, 40)];
//        img_profile.image = [UIImage imageNamed:@"img_profile.png"];
//        img_profile.layer.cornerRadius = 20.0f;
//        img_profile.layer.masksToBounds = YES;
//        [view addSubview:img_profile];
//        
//        UILabel *lbl_login = [[UILabel alloc] initWithFrame:CGRectMake(60, 10, 200, 30)];
//        lbl_login.text = @"Login / Signup";
//        lbl_login.font = [UIFont fontWithName:@"Arial-Bold" size:18.0];
//        lbl_login.textColor = [UIColor blackColor];
//        [view addSubview:lbl_login];
//        return view;
//    }
    self.headerView.backgroundColor = [UIColor lightGrayColor];
    self.img_Profile.layer.cornerRadius = 50.0f;
    self.img_Profile.layer.masksToBounds = YES;
    self.img_Profile.image = [UIImage imageNamed:@"img_profile.png"];
    self.lbl_Name.text = @"NickName";

    return self.headerView;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if([[AppDelegate delegate].status isEqual:@"LOGIN"]){
        return [loginArray count];
    }else{
        return [logoutArray count];
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"leftMenuCell"];
    
    if([[AppDelegate delegate].status isEqual:@"LOGIN"]){
        if((int)indexPath.row > 8 && (int)indexPath.row != 13){
            cell.textLabel.font = [UIFont italicSystemFontOfSize:20.0f];
        }else{
            cell.textLabel.font = [UIFont fontWithName:@"Arial" size:20.0];
        }
        cell.textLabel.text = loginArray[(int)indexPath.row];
        cell.backgroundColor = [UIColor clearColor];
    }else{
        if(indexPath.row == 0){
            cell.backgroundColor = [UIColor lightGrayColor];
            cell.textLabel.hidden = TRUE;
            
            UIImageView *img_profile =[[UIImageView alloc] initWithFrame:CGRectMake(10, 5, 40, 40)];
            img_profile.image = [UIImage imageNamed:@"img_profile.png"];
            img_profile.layer.cornerRadius = 20.0f;
            img_profile.layer.masksToBounds = YES;
            [cell addSubview:img_profile];
            
            UILabel *lbl_login = [[UILabel alloc] initWithFrame:CGRectMake(60, 10, 200, 30)];
            lbl_login.text = @"Accedi / Registrati";
            lbl_login.font = [UIFont fontWithName:@"Arial-Bold" size:20.0];
            lbl_login.textColor = [UIColor blackColor];
            [cell addSubview:lbl_login];
        }else{
            if((int)indexPath.row > 4 && (int)indexPath.row != 9){
                cell.textLabel.font = [UIFont italicSystemFontOfSize:20.0f];
            }else{
                cell.textLabel.font = [UIFont fontWithName:@"Arial" size:20.0];
            }
            cell.textLabel.text = logoutArray[(int)indexPath.row];
            cell.backgroundColor = [UIColor clearColor];
        }
    }
	
	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
	
	UIViewController *vc ;
    if([[AppDelegate delegate].status isEqual:@"LOGIN"]) {
        switch (indexPath.row){
            case 0:
                [self.tableView deselectRowAtIndexPath:[self.tableView indexPathForSelectedRow] animated:YES];
                [[SlideNavigationController sharedInstance] popToRootViewControllerAnimated:YES];
                return;
                break;
            case 1:
                vc = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier: @"profileManageView"];
                break;
            case 2:
                vc = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier: @"insertAdsView"];
                break;
            case 3:
                vc = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier: @"searchView"];
                break;
            case 4:
                //vc = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier: @"shopView"];
                break;
            case 5:
                vc = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier: @"myInsertionsView"];
                break;
            case 6:
                vc = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier: @"myActivitesView"];
                break;
            case 7:
                vc = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier: @"myMessagesView"];
                break;
            case 8:
                vc = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier: @"myUcoinsView"];
                break;
            case 9:
                vc = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier: @"howView"];
                break;
            case 10:
                vc = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier: @"guarnteesView"];
                break;
            case 11:
                vc = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier: @"faqView"];
                break;
            case 12:
                vc = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier: @"termsView"];
                break;
            case 13:
                [self writeToUS];
                return;
                break;
            case 14:
                [AppDelegate delegate].status = @"LOGOUT";
                [self.tableView deselectRowAtIndexPath:[self.tableView indexPathForSelectedRow] animated:YES];
                [[SlideNavigationController sharedInstance] popToRootViewControllerAnimated:YES];
                return;
                break;
        }
    }else{
        switch (indexPath.row){
            case 0:
                vc = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier: @"signinView"];
                break;
            case 1:
                [self.tableView deselectRowAtIndexPath:[self.tableView indexPathForSelectedRow] animated:YES];
                [[SlideNavigationController sharedInstance] popToRootViewControllerAnimated:YES];
                return;
                break;
            case 2:
                vc = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier: @"insertAdsView"];
                break;
            case 3:
                vc = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier: @"searchView"];
                break;
            case 4:
                //vc = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier: @"shopView"];
                break;
            case 5:
                vc = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier: @"howView"];
                break;
            case 6:
                vc = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier: @"guarnteesView"];
                break;
            case 7:
                vc = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier: @"faqView"];
                break;
            case 8:
                vc = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier: @"termsView"];
                break;
            case 9:
                //vc = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier: @"writeView"];
                break;
        }
    }
	
	
	[[SlideNavigationController sharedInstance] popToRootAndSwitchToViewController:vc
															 withSlideOutAnimation:self.slideOutAnimationEnabled
																	 andCompletion:nil];
}

-(void)writeToUS{
//    if ([MFMailComposeViewController canSendMail] == NO){
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Failure"
//                                                        message:@"Your device doesn't support the composer sheet!"
//                                                       delegate:nil
//                                              cancelButtonTitle:@"OK"
//                                              otherButtonTitles: nil];
//        [alert show];
//        
//        return;
//    }
//    MFMailComposeViewController *mailer = [[MFMailComposeViewController alloc] init];
//    mailer.mailComposeDelegate = self;
//    
//    //Destination adress
//    NSArray *toRecipients = [NSArray arrayWithObjects:@"", nil];
//    [mailer setToRecipients:toRecipients];
//    NSString *emailBody = @"Message Body";
//    [mailer setMessageBody:emailBody isHTML:NO];
//    [self presentViewController:mailer animated:YES completion:nil];
    
    
    // Email Subject
    NSString *emailTitle = @"Test Email";
    // Email Content
    NSString *messageBody = @"<h1>Learning iOS Programming!</h1>"; // Change the message body to HTML
    // To address
    NSArray *toRecipents = [NSArray arrayWithObject:@"support@appcoda.com"];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:YES];
    [mc setToRecipients:toRecipents];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];
}

- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    switch (result){
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
