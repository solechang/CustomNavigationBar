//
//  ViewController.m
//  HomeeNavigationBar
//
//  Created by Chang Choi on 2/8/16.
//  Copyright © 2016 solechang. All rights reserved.
//

#import "ViewController.h"
//#import "<#header#>"
#import "HomeeNavigationBar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor grayColor]]; // The  status bar should not be gray

}
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
