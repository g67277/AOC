//
//  SecondViewController.h
//  Practice 16
//
//  Created by Nazir Shuqair on 2/19/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol svDelegate <NSObject>

- (void) done:(NSString*)someText;

@end

@interface SecondViewController : UIViewController{
    
    IBOutlet UITextField *someText;
    id delegate;
}

@property (nonatomic, assign) id <svDelegate> delegate;
@property (nonatomic, strong) UITextField *someText;

- (IBAction)onClose:(id)sender;

@end
