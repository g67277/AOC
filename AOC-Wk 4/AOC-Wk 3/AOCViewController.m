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
@synthesize mainEvents;


//---------- Method to move to different views based on segue identifier ---------------

/*- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"toEvent"]) {
        EventView *eventView = segue.destinationViewController;
        eventView.delegate = self;
    }
}*/
//-------------------------------------------------------------------------------------

//---------- Dismisses the second view and adds the text to the TextView---------------

- (IBAction) done:(UIStoryboardSegue*)segue{
    
    EventView *eventVC = segue.sourceViewController;
    
    if (eventVC.count > 0) {
        // clears the text if its the first entry
        if (index == 1) {
            mainEvents.text = @"";
        }
        
        NSString *currentEvent = [NSString stringWithFormat:@"Event %d: %@\n", index, eventVC.eventString];
        NSString *allEvents = [mainEvents.text stringByAppendingString:currentEvent];
        NSLog(@"%@", allEvents);
        
        mainEvents.text = allEvents;
        
        index++;

    }else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Nothing was saved..." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alert show];
    }
    
    
}
//-------------------------------------------------------------------------------------


//---------- Hiding Keyboard when touching anything but the field----------------------

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [mainEvents resignFirstResponder];
}
//-------------------------------------------------------------------------------------


- (void)viewDidLoad
{
    index = 1;

    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
