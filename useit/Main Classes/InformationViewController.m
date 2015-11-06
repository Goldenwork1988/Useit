//
//  InformationViewController.m
//  useit
//
//  Created by My lovely Maemae on 6/11/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import "ADPageControl.h"
#import "AppDelegate.h"
#import "InformationViewController.h"
#import "InfoCommentViewController.h"
#import "InsertionViewController.h"

@interface InformationViewController ()<ADPageControlDelegate>{
    ADPageControl *_pageControl;
}

@end

@implementation InformationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupPageControl];
}

-(void)setupPageControl{
    /**** 1. Setup pages using model class "ADPageModel" ****/
    //Profile Page
    ADPageModel *pageModel0 = [[ADPageModel alloc] init];
    InfoCommentViewController *infoCommentView = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier:@"infoCommentView"];
    pageModel0.strPageTitle = @"INFO & COMMENTI";
    pageModel0.iPageNumber = 0;
    pageModel0.viewController = infoCommentView;//You can provide view controller in prior OR use flag "bShouldLazyLoad" to load only when required
    
    //Insurance Page
    ADPageModel *pageModel1 = [[ADPageModel alloc] init];
    pageModel1.strPageTitle = @"INSERZIONI";
    pageModel1.iPageNumber = 1;
    pageModel1.bShouldLazyLoad = YES;
    
    /**** 2. Initialize page control ****/
    _pageControl = [[ADPageControl alloc] init];
    _pageControl.delegateADPageControl = self;
    _pageControl.arrPageModel = [[NSMutableArray alloc] initWithObjects:pageModel0,pageModel1,nil];
    
    /**** 3. Customize parameters (Optinal, as all have default value set) ****/
    _pageControl.iFirstVisiblePageNumber = 0;
    _pageControl.iTitleViewHeight = 15;
    _pageControl.iPageIndicatorHeight = 2;
    _pageControl.fontTitleTabText =  [UIFont fontWithName:@"Helvetica-Bold" size:12];
    
    _pageControl.bEnablePagesEndBounceEffect = NO;
    _pageControl.bEnableTitlesEndBounceEffect = NO;
    
    _pageControl.colorTabText = [UIColor whiteColor];
    _pageControl.colorTitleBarBackground = [UIColor colorWithRed:181.0f/255 green:25.0f/255 blue:34.0f/255 alpha:1.0];
    _pageControl.colorPageIndicator = [UIColor darkGrayColor];
    _pageControl.colorPageOverscrollBackground = [UIColor lightGrayColor];
    _pageControl.bShowMoreTabAvailableIndicator = NO;
    
    /**** 4. Add as subview ****/
    _pageControl.view.frame = CGRectMake(0, 70, self.view.bounds.size.width, self.view.bounds.size.height - 70);
    [self.view addSubview:_pageControl.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//LAZY LOADING

-(UIViewController *)adPageControlGetViewControllerForPageModel:(ADPageModel *) pageModel{
    NSLog(@"ADPageControl :: Lazy load asking for page %d",pageModel.iPageNumber);
    
    if(pageModel.iPageNumber == 0){
        InfoCommentViewController *infoCommentView = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier:@"infoCommentView"];
        return infoCommentView;
    }else if(pageModel.iPageNumber == 1){
        InsertionViewController *insertionView = [[AppDelegate delegate].storyboard instantiateViewControllerWithIdentifier:@"insertionView"];
        return insertionView;
    }
    return nil;
}

//CURRENT PAGE INDEX
-(void)adPageControlCurrentVisiblePageIndex:(int) iCurrentVisiblePage{
    NSLog(@"ADPageControl :: Current visible page index : %d",iCurrentVisiblePage);
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
