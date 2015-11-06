//
//  AvailabilityViewController.m
//  useit
//
//  Created by My lovely Maemae on 6/5/15.
//  Copyright (c) 2015 My lovely Maemae. All rights reserved.
//

#import "AvailabilityViewController.h"
#import "PWSCalendarView.h"

@interface AvailabilityViewController ()<PWSCalendarDelegate>{
    UIView* m_view_bottom;
}

@end

@implementation AvailabilityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.lbl_Content.layer.cornerRadius = 5.0f;
    self.lbl_Content.layer.masksToBounds = YES;
    self.btn_Radio1.selected = TRUE;
    self.btn_Radio2.selected = FALSE;
    self.btn_Radio3.selected = FALSE;
    
    [self SetInitialValue];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) SetInitialValue{
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    PWSCalendarView* view = [[PWSCalendarView alloc] initWithFrame:CGRectMake(0, 5, kSCREEN_WIDTH, 500) CalendarType:en_calendar_type_month];
    
    // custom view
    UIImage* img = [UIImage imageNamed:@"img1"];
    UIImageView* imv = [[UIImageView alloc] initWithImage:img];
    view.headType = en_calendar_head_type_custom;
    view.customTimeView = imv;
    
    
    [self.view addSubview:view];
    [view setDelegate:self];
    
    
    // bottom view
    m_view_bottom = [[UIView alloc] init];
    [m_view_bottom setFrame:CGRectMake(0, 0, kSCREEN_WIDTH, 5)];
    [m_view_bottom setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:m_view_bottom];
}

// delegate
- (void) PWSCalendar:(PWSCalendarView*)_calendar didSelecteDate:(NSDate*)_date
{
    NSLog(@"select = %@", _date);
}

- (void) PWSCalendar:(PWSCalendarView*)_calendar didChangeViewHeight:(CGFloat)_height
{
    [m_view_bottom setFrame:CGRectMake(0, _height+5, kSCREEN_WIDTH, 5)];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)OnRadio1:(id)sender {
    self.btn_Radio1.selected = TRUE;
    self.btn_Radio2.selected = FALSE;
    self.btn_Radio3.selected = FALSE;
}

- (IBAction)OnRadio2:(id)sender {
    self.btn_Radio1.selected = FALSE;
    self.btn_Radio2.selected = TRUE;
    self.btn_Radio3.selected = FALSE;
}

- (IBAction)OnRadio3:(id)sender {
    self.btn_Radio1.selected = FALSE;
    self.btn_Radio2.selected = FALSE;
    self.btn_Radio3.selected = TRUE;
}

@end
