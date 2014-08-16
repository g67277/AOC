//
//  AOCViewController.m
//  AOC-Wk 4
//
//  Created by Nazir Shuqair on 2/23/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface EventView : UIViewController{
    
    IBOutlet UITextField *eventField;
    IBOutlet UIButton *save;
    IBOutlet UIButton *hideKeyboard;
    IBOutlet UILabel *errorLabel;
    
}

@property (nonatomic, strong) UITextField *eventField;
@property (nonatomic, strong) NSString *eventString;
@property (nonatomic) long count;


- (IBAction)hideKey:(id)sender;

@end
