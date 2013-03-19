//
//  CViewController.m
//  webview
//
//  Created by 杨 宏强 on 13-3-19.
//  Copyright (c) 2013年 yanghongqiang. All rights reserved.
//

#import "CViewController.h"

@interface CViewController ()

@end

@implementation CViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    web = [[UIWebView alloc] initWithFrame:self.view.frame];
    NSURLRequest *request =[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://gaoluo.qingter.com/lifeng/qtadmin/sec_users/login"]];
    [self.view addSubview: web];
    [web loadRequest:request];
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return (interfaceOrientation == UIDeviceOrientationLandscapeRight || interfaceOrientation==UIDeviceOrientationLandscapeLeft);
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
