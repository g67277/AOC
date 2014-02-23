//
//  ViewController.m
//  AOC Wk 4 test
//
//  Created by Nazir Shuqair on 2/23/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "ViewController.h"
#import "scondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"toSecond"]) {
        scondViewController *secondVC = [segue destinationViewController];
        secondVC.stringType = @"Testing type for now";
    }else if ([segue.identifier isEqualToString:@"toThird"]){
        thirdViewController *thirdVC = [segue destinationViewController];
        thirdVC.stringHP = @"Testing HP for now";
    }
    
    
}


/*- (IBAction)onClick:(id)sender{
    
    //----------------------------------NSUserDefaults / settings stuff --------------------
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil) {
        
        NSString *nameString = name.text;
        NSString *favCarString = favCar.text;
        NSString *favColorString = favColor.text;
        
        [defaults setObject:nameString forKey:@"name"];
        [defaults setObject:favCarString forKey:@"favCar"];
        [defaults setObject:favColorString forKey:@"favColor"];
        
        // saves the data
        [defaults synchronize];
    }
    
}*/

//------------------------------------------------------------------------------------------

-(IBAction)back:(UIStoryboardSegue*)segue{
    
    scondViewController *secondVC = segue.sourceViewController;
    name.text = secondVC.firstStr;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) viewDidAppear:(BOOL)animated{
    //----------------------------------NSUserDefaults / settings stuff --------------------
    
    /*NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil) {
        
        NSString *nameString = [defaults objectForKey:@"name"];
        NSString *favCarString = [defaults objectForKey:@"favCar"];
        NSString *favColorString = [defaults objectForKey:@"favColor"];
        
        name.text = nameString;
        favCar.text = favCarString;
        favColor.text = favColorString;
        
    }*/
    //------------------------------------------------------------------------------------------
    
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
