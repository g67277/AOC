//
//  AOCViewController.m
//  AOC-Wk 4
//
//  Created by Nazir Shuqair on 2/23/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "AOCViewController.h"
#import "EventView.h"

@interface AOCViewController ()

@end

@implementation AOCViewController
@synthesize mainEvents;

//---------- Dismisses the second view and adds the text to the TextView---------------

- (IBAction) done:(UIStoryboardSegue*)segue{
    
    EventView *eventVC = segue.sourceViewController;
    
    // clears the text if its the first entry
    if (index == 1) {
        mainEvents.text = @"";
    }
        
    NSString *currentEvent = [NSString stringWithFormat:@"Event %d: %@\n", index, eventVC.eventString];
    NSString *allEvents = [mainEvents.text stringByAppendingString:currentEvent];
    NSLog(@"%@", allEvents);
        
    mainEvents.text = allEvents;
        
    index++;

    
}
//-------------------------------------------------------------------------------------

//---------- Button to save to defaults -----------------------------------------------
- (IBAction)onClick:(id)sender{
    
    NSUserDefaults *eventsSave = [NSUserDefaults standardUserDefaults];
    if (eventsSave != nil) {
        NSString *save = mainEvents.text;
        
        [eventsSave setObject:save forKey:@"save"];
        [eventsSave synchronize];
        [self createAlert];
    }
    
}
//-------------------------------------------------------------------------------------


//---------- Hiding Keyboard when touching anything but the field----------------------

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [mainEvents resignFirstResponder];
}
//-------------------------------------------------------------------------------------


//---------- Display data from defaults -----------------------------------------------
- (void) displayDefaults {
    
    NSUserDefaults *eventsSave = [NSUserDefaults standardUserDefaults];
    if (eventsSave != nil) {
        NSString *save = [eventsSave objectForKey:@"save"];
        
        mainEvents.text = save;
        
    }
    
}
//-------------------------------------------------------------------------------------

//------------------------ Creates alert for saved events ------------------------------
- (void) createAlert {
    
    UIAlertView *savedMessage = [[UIAlertView alloc] initWithTitle:@"Saved!" message:nil delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:@"Clear Data", nil];
    [savedMessage show];
    
}
//-------------------------------------------------------------------------------------

//------------------------ dismisses message or clears data ---------------------------
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    if (buttonIndex == 1) {
        long count = mainEvents.text.length;
        if (count == 0) {
            // do nothing
        }else{
            NSUserDefaults *eventsClear = [NSUserDefaults standardUserDefaults];
            if (eventsClear != nil) {
                NSString *clear = @"";
                
                [eventsClear setObject:clear forKey:@"save"];
                [eventsClear synchronize];
            }
            mainEvents.text = @"";
            
            cleared.hidden = NO;
            [self fade];
        }
    }
}
//-------------------------------------------------------------------------------------

//------------------------ Fades out error message ------------------------------------
- (void) fade{
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDelay:1.0];
    [UIView setAnimationDuration:1.0];
    [cleared setAlpha:0];
    [UIView commitAnimations];
}
//-------------------------------------------------------------------------------------

- (void)viewDidLoad{
    index = 1;
    
    [self displayDefaults];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
