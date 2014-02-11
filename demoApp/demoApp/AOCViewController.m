//
//  AOCViewController.m
//  demoApp
//
//  Created by Nazir Shuqair on 2/9/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "AOCViewController.h"

@interface AOCViewController ()

@end

@implementation AOCViewController

- (void)viewDidLoad
{
    [self outPutMsg:@"test" numLines:4];
    
    // adding buttons
    
    UIButton *buttonOne = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (buttonOne != nil) {
        buttonOne.frame = CGRectMake(10.0f, 20.0f, 90.0f, 30.0f);
        //buttonOne.tintColor = [UIColor grayColor];
        //buttonOne.backgroundColor = [UIColor yellowColor];
        
        buttonOne.tag = 0;
        
        [buttonOne setTitle:@"Push Me" forState:UIControlStateNormal];
        [buttonOne setTitle:@"Pushed" forState:UIControlStateHighlighted];
        [buttonOne addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];

        [self.view addSubview:buttonOne];
    }
    UIButton *buttonTwo = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (buttonTwo != nil) {
        buttonTwo.frame = CGRectMake(10.0f, 150.0f, 90.0f, 30.0f);
        //buttonOne.tintColor = [UIColor grayColor];
        //buttonOne.backgroundColor = [UIColor yellowColor];
        
        buttonTwo.tag = 1;
        
        [buttonTwo setTitle:@"Push Me 2" forState:UIControlStateNormal];
        [buttonTwo setTitle:@"Pushed 2" forState:UIControlStateHighlighted];
        [buttonTwo addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:buttonTwo];
    }
    
    /*UIButton *customBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    if (customBtn != nil) {
        
        UIImage *testBtn = [UIImage imageNamed:@"test.png"];
        UIImage *clickedTest = [UIImage imageNamed:@"clickedtest.png"];
        
        [customBtn setImage:testBtn forState:UIControlStateNormal];
        [customBtn setImage:clickedTest forState:UIControlStateHighlighted];
        
        //[customBtn addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];
        customBtn.frame = CGRectMake(50.0f, 60.0f, 130.0f, 130.0f);
        [self.view addSubview:customBtn];
    }
     */
    
    // addition code
    
    int number1 = [self getNumber];
    int number2 = [self getNumber];
    result = [self addNum:number1 num2:number2];
    NSLog(@"%d", result);
    
    
    
    
    // Adding NSNumbers to NSMutableArray
    
    NSMutableArray *mutableArray = [[NSMutableArray alloc] initWithCapacity:10];
    if (mutableArray != nil) {
        for (int i = 0; i < 10; i++) {
            NSNumber *number = [[NSNumber alloc] initWithFloat:(1.5f + (float)i)];
            if (number != nil) {
                [mutableArray addObject:number];
                
            }
        }
    }
    for (int i = 0; i < 10; i++) {
        NSNumber *number = [mutableArray objectAtIndex:i];
        if (number != nil) {
            float temp = [number floatValue];
            NSLog(@"%f", temp);
        }
    }
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) clicked:(UIButton*)buttonOne{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"pop-up" message:buttonOne.titleLabel.text delegate:nil cancelButtonTitle:@"ok" otherButtonTitles: nil];
    if (alertView != nil) {
        [alertView show];
    }
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    UITextField *userName = [alertView textFieldAtIndex:0 ];
    if (userName != nil) {
        NSLog(@"Username: %@", userName.text);
    }
    UITextField *password = [alertView textFieldAtIndex:1 ];
    if (password != nil) {
        NSLog(@"Password: %@", password.text);
    }
}

- (void) viewWillAppear:(BOOL)animated{
    
    // alert message with ok to exit
    
    /*UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Result is: " message:@"test" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    if (alertView != nil) {
        alertView.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
        [alertView show];
    }
    */
    
    /*UIAlertView *loadingView = [[UIAlertView alloc] initWithTitle:@"Loading..." message:@"Please Wait" delegate:nil cancelButtonTitle:nil otherButtonTitles: nil];
    if (loadingView != nil) {
        [loadingView show];
    }
    
    for (int x = 0; x < 1000000000; x++) {
        
    };
    [loadingView dismissWithClickedButtonIndex:0 animated:true];
    */
    
    [super viewWillAppear: animated];
}

- (int) outPutMsg: (NSString *)msg numLines: (int)lines{
    NSLog(@"%@ and %d", msg, lines);
    
    return 4;
}

- (float) getWidthOfCGRect: (CGRect)rect{
    
    return rect.size.width;
}

// get random number function

- (int) getNumber{
    int returnNum = arc4random() % 100;
    return returnNum;
}

// addition function

- (int) addNum:(int)num1 num2:(int)num2{
    int numAdded = num1 + num2;
    return numAdded;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
