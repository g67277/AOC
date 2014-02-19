//
//  AOCViewController.h
//  TwoViews
//
//  Created by Nazir Shuqair on 2/18/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TopViewController.h"

@interface AOCViewController : UIViewController <TopViewControllerDelegate, UITextFieldDelegate>{
    
    IBOutlet UITextField *nameTextField;
    IBOutlet UILabel *changable;
}

@property (nonatomic, strong) UITextField *nameTextField;
@property (nonatomic, strong) UILabel *changable;

@end
