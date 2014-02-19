//
//  TopViewController.h
//  TwoViews
//
//  Created by Nazir Shuqair on 2/19/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TopViewControllerDelegate <NSObject>

@required;
- (void) done:(NSString*)someText;

@end
@interface TopViewController : UIViewController <UITextFieldDelegate>{
    
    IBOutlet UITextField *someText;
    IBOutlet UIButton *returnButton;
    id delegate;
}

@property (nonatomic, assign) id <TopViewControllerDelegate> delegate;
@property (nonatomic, strong) UITextField *someText;

- (IBAction)returnButtonPressed:(id)sender;

@end
