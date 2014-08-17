//
//  AOCViewController.m
//  AOC-Wk 4
//
//  Created by Nazir Shuqair on 2/23/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventView.h"

@interface AOCViewController : UIViewController <UIAlertViewDelegate> {
    
    //IBOutlet UITextView *mainEvents;
    int index;
    IBOutlet UILabel *cleared;
    
}

- (IBAction)onClick:(id)sender;

@property (nonatomic, strong) IBOutlet UITextView *mainEvents;

@end
