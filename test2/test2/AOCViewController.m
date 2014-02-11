//
//  AOCViewController.m
//  test2
//
//  Created by Nazir Shuqair on 2/10/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "AOCViewController.h"

@interface AOCViewController ()

@end

@implementation AOCViewController

- (void)viewDidLoad
{
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    if (button != nil) {
        button.frame = CGRectMake(10.0f, 20.0f, 150.0f, 50.0f);
        button.backgroundColor = [UIColor grayColor];
        [button setTitle:@"test me" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) clicked:(UIButton*)buttonOne{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"pop-up" message:buttonOne.titleLabel.text delegate:nil cancelButtonTitle:@"ok" otherButtonTitles: nil];
    if (alertView != nil) {
        [alertView show];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
