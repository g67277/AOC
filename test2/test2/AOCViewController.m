//
//  AOCViewController.m
//  test2
//
//  Created by Nazir Shuqair on 2/10/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "AOCViewController.h"

@interface AOCViewController ()

@end

@implementation AOCViewController

- (void)viewDidLoad
{
    // -----------------------NSFileDirectory stuff-----------------------------------
    // list all path
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    
    // get the path to the dirctory
    NSString *path = (NSString*)[paths objectAtIndex:0];
    NSLog(@"path=%@", path);
    NSArray *directoryContent;
    
    directoryContent = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:path error:nil];
    if (directoryContent != nil) {
        for (int i = 0; i < [directoryContent count]; i++) {
            NSString *filePath = (NSString*)[directoryContent objectAtIndex:i];
            if (filePath != nil) {
                NSLog(@"File#%d=%@", i, filePath);
            }
        }
    }
    
    
    // -----------------------UITextField stuff-----------------------------------
    textField = [[UITextField alloc] initWithFrame:CGRectMake(10, 120, 250, 30)];
    if (textField != nil) {
        
        textField.text = @"type here";
        textField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:textField];
    }
    
    UIButton *textFieldButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (textFieldButton != nil) {
        textFieldButton.frame = CGRectMake(10, 150, 80, 80);
        textFieldButton.backgroundColor = [UIColor grayColor];
        [textFieldButton setTitle:@"Submit" forState:UIControlStateNormal];
        [textFieldButton addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:textFieldButton];
    }
    
    // -----------------------Date stuff-----------------------------------
    dateLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 80, 300, 30)];
    
    NSDate *date = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    if (dateFormatter != nil) {
        [dateFormatter setDateFormat:@"MMM dd, yyyy hh:mma zzz "];
        //[dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        //[dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        dateLabel.text = [dateFormatter stringFromDate:date];
    }
    
    [self.view addSubview:dateLabel];
    //-----------------------------------------------------------------------
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    if (button != nil) {
        button.frame = CGRectMake(10.0f, 20.0f, 150.0f, 50.0f);
        button.backgroundColor = [UIColor grayColor];
        [button setTitle:@"test me" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) clicked:(UIButton*)buttonOne{
    
    if ([buttonOne.titleLabel.text  isEqual: @"Submit"]) {
        
        NSString *userText = [textField text];
        
    }else{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"pop-up" message:buttonOne.titleLabel.text delegate:nil cancelButtonTitle:@"ok" otherButtonTitles: nil];
    if (alertView != nil) {
        [alertView show];
    }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
