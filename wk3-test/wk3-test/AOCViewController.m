//
//  AOCViewController.m
//  wk3-test
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
    
    textField = [[UITextField alloc] initWithFrame:CGRectMake(10, 50, 250, 30)];
    if (textField != nil) {
        
        textField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:textField];
    }
    
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (button != nil) {
        button.frame = CGRectMake(10, 90, 90, 30);
        button.backgroundColor = [UIColor grayColor];
        [button setTitle:@"Submit" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
    
    dynamicLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 20, 200, 30)];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) onClick{
    
    NSString *userText = [textField text];
    
    if (dynamicLabel != nil) {
        
        dynamicLabel.text = userText;
        
        [self.view addSubview:dynamicLabel];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
