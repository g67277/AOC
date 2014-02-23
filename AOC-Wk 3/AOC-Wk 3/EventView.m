//
//  EventView.m
//  AOC-Wk 3
//
//  Created by Nazir Shuqair on 2/19/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "EventView.h"

@interface EventView ()

@end

@implementation EventView
@synthesize eventField;
@synthesize delegate = _delegate;

//-------------------Returns text from textField to first view----------------

- (IBAction)saveAndReturn:(id)sender{
    BOOL  error = [self.delegate done:eventField.text];
    if (error) {
        
    }else{
        errorLabel.hidden = false;
    }
}
//----------------------------------------------------------------------------

//---------------------------- Hides Keyboard --------------------------------

- (IBAction)hideKey:(id)sender{

    [self returnKey:eventField];
}

- (BOOL) returnKey:(UITextField*)textField{
    if (textField) {
        [textField resignFirstResponder];
    }
    return NO;
}
//----------------------------------------------------------------------------

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
