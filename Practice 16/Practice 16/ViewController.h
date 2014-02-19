//
//  ViewController.h
//  Practice 16
//
//  Created by Nazir Shuqair on 2/19/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController <svDelegate>{
    
    IBOutlet UISwitch *switchTest;
    
}

@property (nonatomic, strong) UISwitch *switchTest;


@end
