//
//  HomeeNavigationBar.m
//  HomeeNavigationBar
//
//  Created by Chang Choi on 2/8/16.
//  Copyright © 2016 solechang. All rights reserved.
//

#import "HomeeNavigationBar.h"
#warning WHAT TO DO:
// 1.) CHeck if there is a way so that both the navigation bar and the status bar color is changed without the view hack
// 2.) Check if another view controller is pushed, the navigation bar is correctly working

@implementation HomeeNavigationBar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

        [self setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
        [self setShadowImage:[UIImage new]];
        [self setBackgroundColor:[UIColor whiteColor]];
        
        UIButton *backButton = [[UIButton alloc]init];
        backButton.frame = CGRectMake(10, 15, 25, 25);
        [backButton setImage:[UIImage imageNamed:@"close_button"] forState:UIControlStateNormal];
        [backButton setBackgroundColor:[UIColor redColor]];
        [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:backButton];
        
       
        
//       [[UINavigationBar appearance] setBarTintColor:[UIColor blueColor]];
       //        [navBarTitle setBackgroundColor:[UIColor blueColor]];



    }
    return self;
}



- (void) backAction {
    NSLog(@"1.)");
}
- (void) setBarTitle: (NSString*) title {
    self.title.text = title;
}
//// Only override drawRect: if you perform custom drawing.
//// An empty implementation adversely affects performance during animation.
//- (void)drawRect:(CGRect)rect {
//    // Drawing code
//    NSLog(@"2.)");
//
//    
//}
- (void)layoutSubviews
{
    // UINavigationBar positions its elements along the bottom edge of the
    // bar's bounds.  This allows our subclass to position our custom elements
    // at the top of the navigation bar, in the extra space we created by
    // padding the height returned from -sizeThatFits:
    [super layoutSubviews];
    
    // NOTE: You do not need to account for the status bar height in your
    //       layout.  The navigation bar is positioned just below the
    //       status bar by the navigation controller.
    
    if (!self.framesAreSet) {
        [self setStatusBarColor];
        [self setTheTitle];
    
    }
    
}

- (void) setStatusBarColor {
    
    UIApplication *app = [UIApplication sharedApplication];

    UIView *statusBarView = [[UIView alloc] initWithFrame:CGRectMake(0, -app.statusBarFrame.size.height, self.frame.size.width, app.statusBarFrame.size.height)] ;
    [statusBarView setBackgroundColor:[UIColor whiteColor]];
    
    [self addSubview:statusBarView];
    self.framesAreSet = YES;

}

- (void) setTheTitle {
    
    UILabel *navBarTitle = [[UILabel alloc]init];
    navBarTitle.frame = CGRectMake(self.frame.size.width/2 - 50, 10.f, 100.0f , 30.f);
    navBarTitle.text = @"Homee";
    navBarTitle.textColor = [UIColor blackColor];
    navBarTitle.textAlignment = NSTextAlignmentCenter;
    [self addSubview:navBarTitle];

    
}



@end
