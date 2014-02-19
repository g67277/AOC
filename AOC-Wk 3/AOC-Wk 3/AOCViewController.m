//
//  AOCViewController.m
//  AOC-Wk 3
//
//  Created by Nazir Shuqair on 2/19/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "AOCViewController.h"
#import "EventView.h"

@interface AOCViewController ()

@end

@implementation AOCViewController
@synthesize mainEvent;
@synthesize test;

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"toEvent"]) {
        EventView *eventView = segue.destinationViewController;
        eventView.delegate = self;
    }
}

- (void) done:(NSString*)text{
    
    [self dismissViewControllerAnimated:YES completion:Nil];
    mainEvent.text = text;
    test.text = text;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
