//
//  scondViewController.m
//  AOC Wk 4 test
//
//  Created by Nazir Shuqair on 2/23/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "scondViewController.h"

@interface scondViewController ()

@end

@implementation scondViewController
@synthesize type;
@synthesize stringType;
@synthesize firstStr;


-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"secondToFirst"]) {
        firstStr = first.text;
        NSLog(firstStr);
    }
}

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
    [type setText:stringType];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
