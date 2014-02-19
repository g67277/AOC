//
//  EventView.h
//  AOC-Wk 3
//
//  Created by Nazir Shuqair on 2/19/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol eventDelegate <NSObject>

@required
- (void) done:(NSString*)eventText;

@end

@interface EventView : UIViewController{
    
    IBOutlet UITextField *eventField;
    IBOutlet UIButton *save;
    IBOutlet UIButton *hideKeyboard;
    
    id delegate;
    
}

@property (nonatomic, strong) UITextField *eventField;
@property (nonatomic, assign) id <eventDelegate> delegate;

- (IBAction)saveAndReturn:(id)sender;

@end
