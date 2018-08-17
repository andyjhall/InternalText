#define kWidth [[UIApplication sharedApplication] keyWindow].frame.size.width
#define kHeight [[UIApplication sharedApplication] keyWindow].frame.size.height

@interface SBDashBoardQuickActionsViewController  : UIViewController
@end

%hook SBDashBoardQuickActionsViewController  
- (void)loadView {
	%orig;

	//Create Label
	UILabel *ajh_cpText = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, kWidth, 15)];
	ajh_cpText.center = CGPointMake((kWidth * 1/2), (kHeight * 31/32));
	ajh_cpText.text = [NSString stringWithFormat:@"%@", @"Confidential & Proprietary, Call 1-800-MYAPPL"];
	ajh_cpText.font = [UIFont systemFontOfSize: 10];
	ajh_cpText.textColor = UIColor.whiteColor;
	ajh_cpText.textAlignment = NSTextAlignmentCenter;
	[self.view addSubview:ajh_cpText];
}
%end