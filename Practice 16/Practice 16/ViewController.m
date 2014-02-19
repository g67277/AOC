//
//  ViewController.m
//  Practice 16
//
//  Created by Nazir Shuqair on 2/19/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize switchTest;

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"toGreen"]){
        
        SecondViewController *svController = segue.destinationViewController;
        svController.delegate = self;
    }
}

- (void) done:(NSString*)onOff{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    NSLog(@"we are back at view 1 with name = %@", onOff);
    textOn.text = onOff;
    
}

- (BOOL) textValidation:(NSString*)check{
    
    if ([check isEqualToString:@"Yes"]) {
        return YES;
    }else{
        return NO;

    }
    
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
