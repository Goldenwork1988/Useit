#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface SDViewController : UIViewController<UITextFieldDelegate, MFMailComposeViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *deviceMotionRoll;
@property (weak, nonatomic) IBOutlet UILabel *deviceMotionPitch;
@property (weak, nonatomic) IBOutlet UILabel *deviceMotionYawn;

@property (weak, nonatomic) IBOutlet UIImageView *roll;
@property (weak, nonatomic) IBOutlet UIImageView *yawn;

@property (weak, nonatomic) IBOutlet UILabel *gyroX;
@property (weak, nonatomic) IBOutlet UILabel *gyroY;
@property (weak, nonatomic) IBOutlet UILabel *gyroZ;

@property (weak, nonatomic) IBOutlet UILabel *magnetometerX;
@property (weak, nonatomic) IBOutlet UILabel *magnetometerY;
@property (weak, nonatomic) IBOutlet UILabel *magnetometerZ;

@property (weak, nonatomic) IBOutlet UILabel *gforce;
@property (weak, nonatomic) IBOutlet UIView *subView;
@property (weak, nonatomic) IBOutlet UILabel *lblX;
@property (weak, nonatomic) IBOutlet UILabel *lblY;
@property (weak, nonatomic) IBOutlet UILabel *lblZ;
@property (nonatomic, strong) IBOutlet UITextField *intervalField;
@property (nonatomic, strong) NSMutableArray * xArray;
@property (nonatomic, strong) NSMutableArray * yArray;
@property (nonatomic, strong) NSMutableArray * zArray;
@property (weak, nonatomic) IBOutlet UIButton *startStopBtn;
@property (weak, nonatomic) IBOutlet UIButton *saveBtn;
@property (weak, nonatomic) IBOutlet UIButton *emailBtn;
@property (nonatomic, strong)NSString * filePath, * fullPath;

- (IBAction)onStartStopBtnClicked:(id)sender;
- (IBAction)onSaveBtnClicked:(id)sender;
- (IBAction)onEmailBtnClicked:(id)sender;
+(float) getInterVal;

@end