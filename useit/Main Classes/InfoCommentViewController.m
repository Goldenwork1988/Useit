//
//  InfoCommentViewController.m
//  useit
//
//  Created by My lovely Maemae on 6/11/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import "InfoCommentViewController.h"

@interface InfoCommentViewController ()

@end

@implementation InfoCommentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSMutableAttributedString* attributeString = [[NSMutableAttributedString alloc]initWithString:@"AndreaFaccina"];
    [attributeString addAttribute:NSUnderlineStyleAttributeName
                            value:[NSNumber numberWithInt:1]
                            range:(NSRange){0,[attributeString length]}];
    self.lbl_Username.attributedText = attributeString;
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

@end
