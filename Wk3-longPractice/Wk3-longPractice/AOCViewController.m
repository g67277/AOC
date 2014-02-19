//
//  AOCViewController.m
//  Wk3-longPractice
//
//  Created by Nazir Shuqair on 2/17/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "AOCViewController.h"

@interface AOCViewController ()

@end

@implementation AOCViewController

- (void)viewDidLoad
{
    index = 0;
    
    NSDate *date = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    if (dateFormatter != nil) {
        [dateFormatter setDateStyle:NSDateFormatterFullStyle];
        [dateFormatter setTimeStyle:NSDateFormatterFullStyle];
        
        fullDate = [dateFormatter stringFromDate:date];
    }
    
    userName = [[UILabel alloc] initWithFrame:CGRectMake(10, 30, 90, 30)];
    if (userName != nil) {
        userName.text = @"Username: ";
        //userName.backgroundColor = [UIColor grayColor];
        [self.view addSubview:userName];
    }
    
    enterLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 130, self.view.bounds.size.width, 80)];
    if (enterLabel != nil) {
        enterLabel.text = @"Please Enter Username";
        enterLabel.textColor = [UIColor blueColor];
        enterLabel.textAlignment = NSTextAlignmentCenter;
        enterLabel.backgroundColor = [UIColor grayColor];
        [self.view addSubview:enterLabel];
    }
    
    nameField = [[UITextField alloc] initWithFrame:CGRectMake(105, 30, 200, 30)];
    if (nameField != nil) {
        nameField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:nameField];
    }
    
    login = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (login != nil) {
        login.tag = 0;
        login.frame = CGRectMake(260, 70, 40, 20);
        //login.backgroundColor = [UIColor grayColor];
        [login addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];
        [login setTitle:@"Login" forState:UIControlStateNormal];
        [self.view addSubview:login];
    }
    
    showDate = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (showDate != nil) {
        showDate.tag = 1;
        showDate.frame = CGRectMake(10, 260, 90, 30);
        showDate.backgroundColor = [UIColor greenColor];
        [showDate addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];
        [showDate setTitle:@"Show Date" forState:UIControlStateNormal];
        [self.view addSubview:showDate];
    }
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) clicked:(UIButton*)button{
    
    if (button.tag == 0) {
        NSString *userText = [nameField text];
        if (userText.length == 0) {
            enterLabel.text = @"Username Cannot be empty";
            [self.view addSubview:enterLabel];
        }else{
            NSMutableString *loggedOutput = [[NSMutableString alloc]initWithString:@"User:  has been logged in"];
            [loggedOutput insertString:userText atIndex:6];
            enterLabel.text = loggedOutput;
            [self.view addSubview:enterLabel];
        }
    }else if (button.tag == 1){
        [self displayAlertWithString:fullDate];
    }else{
        // do nothing
    }
    
}

- (IBAction)onClick:(id)sender{
    
    if (index == 0) {
        label1.hidden = NO;
        index++;
    }else{
        label1.hidden = YES;
        index--;
    }
    
}

- (void) displayAlertWithString:(NSString*)strOne{
    
    UIAlertView *alerView = [[UIAlertView alloc] initWithTitle:@"Date" message:strOne delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    if (alerView != nil){
        [alerView show];
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
