//
//  thirdViewController.m
//  AOC Wk 4 test
//
//  Created by Nazir Shuqair on 2/23/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "thirdViewController.h"

@interface thirdViewController ()

@end

@implementation thirdViewController
@synthesize hp;
@synthesize stringHP;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [hp setText:stringHP];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
