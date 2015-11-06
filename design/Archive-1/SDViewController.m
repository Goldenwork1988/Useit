#import "SDViewController.h"
#import "SDMotion.h"
#import <CoreMotion/CoreMotion.h>

@interface SDViewController ()
{
  UIImageView *roll_, *pitch_, *yawn_;
  CMAttitude *ref;
  BOOL keyboardIsShown;

}
@end

@implementation SDViewController

@synthesize intervalField, lblX, lblY, lblZ, subView, xArray, yArray, zArray, saveBtn, startStopBtn, emailBtn,filePath, fullPath;

static float interVal;
+(float) getInterVal{
    return interVal;
}

float status			= 0;
float oldpitch			= 0;
float pitchdirection	= 1;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) 
  {
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(deviceMotionUpdate:)
                                                 name:deviceMotionUpdateNotification
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(gyroUpdate:)
                                                 name:gyroUpdateNotification
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(magnetometerUpdate:)
                                                 name:magnetometerUpdateNotification
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(accelerometerUpdate:)
                                                 name:accelerometerUpdateNotification
                                               object:nil];
  
  }
  return self;
}

- (void)viewDidLoad
{
	[super viewDidLoad];
    interVal = 25.0f;

	roll_ = [[UIImageView alloc] initWithFrame:CGRectMake(40.0f, 89.0f, 64.0f, 64.0f)];
	roll_.image = [UIImage imageNamed:@"roll"];
	[self.view addSubview:roll_];
	[self.view sendSubviewToBack:roll_];
  
	pitch_ = [[UIImageView alloc] initWithFrame:CGRectMake(40.0f, 161.0f, 64.0f, 64.0f)];
	pitch_.image = [UIImage imageNamed:@"pitch"];
	[self.view addSubview:pitch_];
    [self.view sendSubviewToBack:pitch_];
  
	yawn_ = [[UIImageView alloc] initWithFrame:CGRectMake(40.0f, 233.0f, 64.0f, 64.0f)];
	yawn_.image = [UIImage imageNamed:@"yawn"];
	[self.view addSubview:yawn_];
    [self.view sendSubviewToBack:yawn_];
  
	[intervalField setBackgroundColor:[UIColor colorWithRed:0.2 green:0.2 blue:0.8 alpha:0.6]];
	intervalField.delegate = self;
	intervalField.enabled = YES;
    [intervalField setText:@"25"];
	[intervalField setKeyboardType:UIKeyboardTypeNumberPad];
	[self.subView addSubview:intervalField];

	lblX.backgroundColor = [UIColor colorWithRed:0.2 green:0.2 blue:0.8 alpha:0.6];
	[self.subView addSubview:lblX];
	lblY.backgroundColor = [UIColor colorWithRed:0.2 green:0.2 blue:0.8 alpha:0.6];
	[self.subView addSubview:lblY];
	lblZ.backgroundColor = [UIColor colorWithRed:0.2 green:0.2 blue:0.8 alpha:0.6];
	[self.subView addSubview:lblZ];

    xArray = [[NSMutableArray alloc]init];
    yArray = [[NSMutableArray alloc]init];
    zArray = [[NSMutableArray alloc]init];
    
    startStopBtn.backgroundColor = [UIColor colorWithRed:0.8 green:0.2 blue:0.2 alpha:0.6];
    [self.subView addSubview:startStopBtn];
    
    saveBtn.backgroundColor = [UIColor grayColor];
	[saveBtn setEnabled:NO];
    [self.subView addSubview:saveBtn];
    
    emailBtn.backgroundColor = [UIColor grayColor];
	[emailBtn setEnabled:NO];
    [self.subView addSubview:emailBtn];
}

#pragma mark - Core Motion notifications callbacks

- (void)deviceMotionUpdate:(NSNotification *)notification
{
	NSDictionary *token = [notification object];
  
	CMDeviceMotion *motion = [token objectForKey:@"motion"];
  
    CMAttitude *attitude = motion.attitude;
    if (ref == nil)
	{
        ref = attitude;
	}
    else if (ref != nil)
	{
		[attitude multiplyByInverseOfAttitude:ref];
	}
    
    float deviceMotionRoll	= -1 * attitude.roll;
    float deviceMotionYaw	= -1 * attitude.yaw;
    float deviceMotionPitch	= -1 * attitude.pitch;
	
    if (deviceMotionPitch >= oldpitch){
        pitchdirection = 1;
    } else {
        pitchdirection = -1;
    }
    oldpitch = deviceMotionPitch;
	
    if (status == 0){
        deviceMotionPitch = -attitude.pitch;
    }
    if (status == 1){
         deviceMotionPitch = M_PI + attitude.pitch;
    }
    if (status == 0 && pitchdirection == 1 && deviceMotionPitch >= 1.5)
    {
        self.deviceMotionRoll.text = @"ooooooo1";
        status = 1;
    }
    if (status == 0 && pitchdirection == -1 &&  deviceMotionPitch <= -1.5){
        status = 1;
        self.deviceMotionRoll.text = @"ooooooo2";
    }
    if (status == 1 && pitchdirection ==1 && deviceMotionPitch >= 4.6){
        status = 0;
        self.deviceMotionRoll.text = @"ooooooo3";
    }
    if (status == 1 && pitchdirection == -1 && deviceMotionPitch <= 1.7){
        status = 0;
        self.deviceMotionRoll.text = @"ooooooo4";
    }

 // self.deviceMotionRoll.text = [NSString stringWithFormat:@"%.2f", deviceMotionYaw];
    self.deviceMotionRoll.text = [NSString stringWithFormat:@"%.2f", deviceMotionYaw];
    self.deviceMotionPitch.text = [NSString stringWithFormat:@"%.2f", deviceMotionPitch];
    self.deviceMotionYawn.text = [NSString stringWithFormat:@"%.2f", deviceMotionRoll];
    
    self.lblX.text = [NSString stringWithFormat:@"%f", deviceMotionYaw];
	self.lblY.text = [NSString stringWithFormat:@"%f", deviceMotionPitch];
	self.lblZ.text = [NSString stringWithFormat:@"%f", deviceMotionRoll];

    [xArray addObject:[NSString stringWithFormat:@"%f",deviceMotionYaw]];
    [yArray addObject:[NSString stringWithFormat:@"%f",deviceMotionPitch]];
    [zArray addObject:[NSString stringWithFormat:@"%f",deviceMotionRoll]];

	roll_.transform = CGAffineTransformMakeRotation(deviceMotionYaw);
	pitch_.transform = CGAffineTransformMakeRotation(deviceMotionPitch);
	yawn_.transform = CGAffineTransformMakeRotation(deviceMotionRoll);

	CMAcceleration gravity = motion.gravity;
	self.gforce.text = [NSString stringWithFormat:@"gforce = %.2f", gravity.z];
}

- (void)gyroUpdate:(NSNotification *)notification
{
  NSDictionary *token = [notification object];
  
  _gyroX.text = [NSString stringWithFormat:@"%@", token[@"gyroRotationRateX"]];
  _gyroY.text = [NSString stringWithFormat:@"%@", token[@"gyroRotationRateY"]];
  _gyroZ.text = [NSString stringWithFormat:@"%@", token[@"gyroRotationRateZ"]];
}

- (void)magnetometerUpdate:(NSNotification *)notification
{
  NSDictionary *token = [notification object];
    if ([[self.navigationItem.leftBarButtonItem title] isEqual:@"Playing....."]) {
  
        self.deviceMotionRoll.text = [NSString stringWithFormat:@"%.2f", [token[@"magnetometerMagneticFieldX"] floatValue]];
        self.deviceMotionPitch.text = [NSString stringWithFormat:@"%.2f", [token[@"magnetometerMagneticFieldY"] floatValue]];
        self.deviceMotionYawn.text = [NSString stringWithFormat:@"%.2f", [token[@"magnetometerMagneticFieldZ"] floatValue]];
    }
  
  double heading = 0.0;
  double x = [token[@"magnetometerMagneticFieldX"] doubleValue];
  double y = [token[@"magnetometerMagneticFieldY"] doubleValue];
  //double z = [token[@"magnetometerMagneticFieldZ"] doubleValue];
  
  if (y > 0) heading = 90.0 - atan(x/y) * 180.0 / M_PI;
  if (y < 0) heading = 270.0 - atan(x/y) * 180.0 / M_PI;
  if (y == 0 && x < 0) heading = 180.0;
  if (y == 0 && x > 0) heading = 0.0;
  
  NSLog(@"Heading Angle = %f", heading);
  
  self.yawn.transform = CGAffineTransformMakeRotation(heading);
}

- (void)accelerometerUpdate:(NSNotification *)notification
{
  NSDictionary *token = [notification object];
  
  float accelerometerAccelerationX = [token[@"accelerometerAccelerationX"] floatValue];
  float accelerometerAccelerationY = [token[@"accelerometerAccelerationY"] floatValue];
  float accelerometerAccelerationZ = [token[@"accelerometerAccelerationZ"] floatValue];
  
  self.deviceMotionRoll.text = [NSString stringWithFormat:@"%.2f", accelerometerAccelerationX];
  self.deviceMotionPitch.text = [NSString stringWithFormat:@"%.2f", accelerometerAccelerationZ];
  self.deviceMotionYawn.text = [NSString stringWithFormat:@"%.2f", accelerometerAccelerationY];
  
  roll_.transform = CGAffineTransformMakeRotation(accelerometerAccelerationX);
  pitch_.transform = CGAffineTransformMakeRotation(-1 * accelerometerAccelerationZ);
  yawn_.transform = CGAffineTransformMakeRotation(accelerometerAccelerationY);
  
//    self.subView.label.text = [NSString stringWithFormat:@"X:%f-Y:%f-Z:%f", accelerometerAccelerationX, accelerometerAccelerationY,accelerometerAccelerationZ];
//    label.text =[NSString stringWithFormat:@"X:%f-Y:%f-Z:%f", accelerometerAccelerationX, accelerometerAccelerationY,accelerometerAccelerationZ];

    
    /*
  float GForce = sqrt(accelerometerAccelerationX * accelerometerAccelerationX +
                      accelerometerAccelerationY * accelerometerAccelerationY +
                      accelerometerAccelerationZ * accelerometerAccelerationZ);
  
  if (GForce < 1.0f)
    GForce = -1.0f - GForce;
  
  self.gforce.text = [NSString stringWithFormat:@"acc X = %.2f\nacc Y = %.2f\nacc Z = %.2f",
                      accelerometerAccelerationX,
                      accelerometerAccelerationY,
                      -accelerometerAccelerationZ];
   */
  
  self.gforce.text = [NSString stringWithFormat:@"gforce = %.2f",
                      -accelerometerAccelerationZ
                      ];
    
    
    
    
}


- (IBAction)onStartStopBtnClicked:(id)sender {
    SDMotion *sdm = [SDMotion singleton];
	
	if ([startStopBtn.titleLabel.text isEqualToString:@"Start"] == YES)
	{
		intervalField.enabled = NO;
		[intervalField setBackgroundColor:[UIColor grayColor]];
    	[saveBtn setBackgroundColor:[UIColor grayColor]];
		[saveBtn setEnabled:NO];
		[emailBtn setBackgroundColor:[UIColor grayColor]];
		[emailBtn setEnabled:NO];
		[startStopBtn setTitle:@"Stop" forState:UIControlStateNormal];
		
		[xArray removeAllObjects];
		[yArray removeAllObjects];
		[zArray removeAllObjects];
		
		self.fullPath = @"";
		
		[sdm startDeviceMotionUpdates];
	}
	else
	{
		intervalField.enabled = YES;
		[intervalField setBackgroundColor:[UIColor colorWithRed:0.2 green:0.2 blue:0.8 alpha:0.6]];
		[saveBtn setBackgroundColor:[UIColor colorWithRed:0.8 green:0.2 blue:0.2 alpha:0.6]];
		[saveBtn setEnabled:YES];
		[emailBtn setBackgroundColor:[UIColor colorWithRed:0.8 green:0.2 blue:0.2 alpha:0.6]];
		[emailBtn setEnabled:YES];
		[startStopBtn setTitle:@"Start" forState:UIControlStateNormal];
		[sdm stopDeviceMotionUpdates];
	}
}

- (IBAction)onSaveBtnClicked:(id)sender {
    SDMotion *sdm = [SDMotion singleton];
    [sdm stopDeviceMotionUpdates];
    
    self.deviceMotionRoll.text = [NSString stringWithFormat:@"%.2f", 0.0];
    self.deviceMotionPitch.text = [NSString stringWithFormat:@"%.2f", 0.0];
    self.deviceMotionYawn.text = [NSString stringWithFormat:@"%.2f", 0.0];
    ref = nil;
    roll_.transform = CGAffineTransformMakeRotation(0);
    pitch_.transform = CGAffineTransformMakeRotation(0);
    yawn_.transform = CGAffineTransformMakeRotation(0);
    NSMutableString *csv = [NSMutableString stringWithString:@"xCoordinate,yCoordinate,zCoordinate "];
    NSUInteger count = [xArray count];
    for (NSUInteger i=0; i<count; i++ )
    {
        [csv appendFormat:@"\n\"%@\",%@,%@",[xArray objectAtIndex:i],[yArray objectAtIndex:i],[zArray objectAtIndex:i]];
    }
    
    NSLog(@"csvString:%@",csv);
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSLog(@"Document Dir: %@",documentsDirectory);
    NSInteger fileName = [[NSDate date]timeIntervalSince1970];
    filePath = [NSString stringWithFormat:@"%ld.csv", (long)fileName];
    fullPath = [documentsDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"%ld.csv", (long)fileName]];
    NSLog(@"fullPath:%@", fullPath);
    [fileManager createFileAtPath:fullPath contents:[csv dataUsingEncoding:NSUTF8StringEncoding] attributes:nil];
    [xArray removeAllObjects];
    [yArray removeAllObjects];
    [zArray removeAllObjects];
//   [saveBtn setEnabled:NO];
    
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Success!" message:@"CSV File was saved successfully" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    [alertView show];
}

- (IBAction)onEmailBtnClicked:(id)sender {
    if ([MFMailComposeViewController canSendMail] == NO)
    {
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Failure"
														message:@"Your device doesn't support the composer sheet!"
													   delegate:nil
											  cancelButtonTitle:@"OK"
											  otherButtonTitles: nil];
		[alert show];
		
		return;
    }
	
	if ([fullPath isEqualToString:@""] == YES)
	{
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Failure"
														message:@"CSV file is not exist. Please save the data!"
													   delegate:nil
											  cancelButtonTitle:@"OK"
											  otherButtonTitles: nil];
		[alert show];
		
		return;
	}

	MFMailComposeViewController *mailer = [[MFMailComposeViewController alloc] init];
	mailer.mailComposeDelegate = self;
	[mailer setSubject:@"CSV File"];
	
	//Destination adress
	NSArray *toRecipients = [NSArray arrayWithObjects:@"", nil];
	[mailer setToRecipients:toRecipients];
	[mailer addAttachmentData:[NSData dataWithContentsOfFile:fullPath]
					 mimeType:@"text/csv"
					 fileName:filePath];
	NSString *emailBody = @"Message Body";
	[mailer setMessageBody:emailBody isHTML:NO];
	[self presentViewController:mailer animated:YES completion:nil];
}

- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
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

- (void)viewWillDisappear:(BOOL)animated
{
//    [_gravityBallView stopUpdate];
}

- (void) keyboardWillHide: (NSNotification *) notificaiton
{
    CGRect viewFrame = subView.frame;
    viewFrame.origin.y += 150;
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [subView setFrame:viewFrame];
    [UIView commitAnimations];
    keyboardIsShown=FALSE;
    
}


- (void) keyboardWillShow: (NSNotification *) notificaiton
{
    if (keyboardIsShown) {
        return;
    }
    
    CGRect viewFrame = subView.frame;
    viewFrame.origin.y -= 150;
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [subView setFrame:viewFrame];
    [UIView commitAnimations];
    keyboardIsShown=YES;
    
}


-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

-(void) textFieldDidEndEditing:(UITextField *)textField{
    interVal = [textField.text floatValue];
    NSLog(@"%f",interVal);
    if (!interVal) {
        UIAlertView * alerView = nil;
        if ([textField.text isEqualToString:@""] == YES)
        {
            alerView = [[UIAlertView alloc]initWithTitle:@"Warning!" message:@"Interval must be filled with number!" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        }
        else{
            alerView = [[UIAlertView alloc]initWithTitle:@"Warning!" message:@"Interval cannot be 0!" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        }
        [alerView show];
        [textField setText:@"25"];
    }
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [intervalField resignFirstResponder];
}

-(void) viewWillAppear:(BOOL)animated
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:self.view.window];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:self.view.window];
    keyboardIsShown=NO;
}


@end