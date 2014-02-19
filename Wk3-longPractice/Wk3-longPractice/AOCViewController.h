//
//  AOCViewController.h
//  Wk3-longPractice
//
//  Created by Nazir Shuqair on 2/17/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AOCViewController : UIViewController{
    
    UILabel *userName;
    UILabel *enterLabel;
    
    UITextField *nameField;
    
    UIButton *login;
    UIButton *showDate;
    UIButton *info;
    
    NSString *fullDate;
    int index;
    
    IBOutlet UILabel *label1;    
}

- (IBAction)onClick:(id)sender;

- (void) displayAlertWithString:(NSString*)strOne;

@end
