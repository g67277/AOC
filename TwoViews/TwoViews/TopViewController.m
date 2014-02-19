//
//  TopViewController.m
//  TwoViews
//
//  Created by Nazir Shuqair on 2/19/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "TopViewController.h"

@interface TopViewController ()

@end

@implementation TopViewController
// getter setter for someText
@synthesize someText;
@synthesize delegate = _delegate;


// carry SomeText text over to main view by clicking back

- (IBAction)returnButtonPressed:(id)sender{
    [self.delegate done:someText.text];
}

// carry SomeText text over to main view by pressing enter

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [self.delegate done:someText.text];
    return true;
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
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
