//
//  AOCViewController.m
//  YourCup
//
//  Created by Nazir Shuqair on 2/5/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "AOCViewController.h"

@interface AOCViewController ()

@end

@implementation AOCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    label1 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 20.0f, 320.0f, 30.0f)];
    
    if (label1 != Nil) {
        label1.text = @"YourCup";
        label1.textAlignment = NSTextAlignmentCenter;
        label1.backgroundColor = [UIColor grayColor];
        label1.textColor = [UIColor colorWithRed:255.0 green:159.0 blue:0.0 alpha:1.0];
        //******************Shadow test****************
        //label1.shadowColor = [UIColor whiteColor];
        //label1.shadowOffset = CGSizeMake(1.0f, 1.0f);
    }
    [self.view addSubview:label1];
    
    label2 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 80.0f, 200.0f, 20.0f)];
    if (label2 != nil) {
        label2.text = @"World Cup 2014!";
        label2.textColor = [UIColor colorWithRed:0.0 green:20.0 blue:0.0 alpha:1.0];
    }
    [self.view addSubview:label2];
    
    label3 = [[UILabel alloc] initWithFrame:CGRectMake(220.0f, 80.0f, 200.0f, 20.0f)];
    if (label3 != nil) {
        label3.text = @"Bet!";
        label3.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:20 alpha:1.0];
    }
    [self.view addSubview:label3];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
