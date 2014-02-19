//
//  AOCViewController.m
//  TwoViews
//
//  Created by Nazir Shuqair on 2/18/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "AOCViewController.h"
#import "TopViewController.h"

@interface AOCViewController ()

@end

@implementation AOCViewController
@synthesize nameTextField;
@synthesize changable;

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"to2"]) {
        TopViewController *secondVC = segue.destinationViewController;
        secondVC.delegate = self;
    }
}

-(void)done:(NSString*)name{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    NSLog(@"Back in first ViewController, Method Done, With name= %@", name);
    nameTextField.text = name;
    changable.text = name;
    
}

- (BOOL) textFieldShouldBeginEditing:(UITextField *)textField{
    
    textField.text = @"";
    
    return true;
}

- (IBAction)unwindFromTopViewController:(UIStoryboardSegue*)segue{
    NSLog(@" in unwind");
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
