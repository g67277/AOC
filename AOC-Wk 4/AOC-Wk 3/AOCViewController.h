//
//  AOCViewController.h
//  AOC-Wk 3
//
//  Created by Nazir Shuqair on 2/19/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventView.h"

@interface AOCViewController : UIViewController {
    
    IBOutlet UITextView *mainEvents;    
    int index;
    
}

@property (nonatomic, strong) UITextView *mainEvents;

@end
