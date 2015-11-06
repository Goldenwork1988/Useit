//
//  HowItWorksViewController.m
//  useit
//
//  Created by My lovely Maemae on 5/31/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import <MediaPlayer/MediaPlayer.h>
#import "HowItWorksViewController.h"

@interface HowItWorksViewController (){
    MPMoviePlayerController * moviePlayer;
}

@end

@implementation HowItWorksViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *urlStr = [[NSBundle mainBundle] pathForResource:@"How" ofType:@"m4v"];
    NSURL *url = [NSURL fileURLWithPath:urlStr];
    moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:url];
    [moviePlayer.view setFrame:CGRectMake(0, 200, 320, 210)];
    
    moviePlayer.view.hidden = NO;
    moviePlayer.shouldAutoplay = YES;
    moviePlayer.movieSourceType = MPMovieSourceTypeFile;
    [moviePlayer play];
    [self.view addSubview:moviePlayer.view];
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
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
