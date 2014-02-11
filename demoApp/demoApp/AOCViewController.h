//
//  AOCViewController.h
//  demoApp
//
//  Created by Nazir Shuqair on 2/9/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AOCViewController : UIViewController <UIAlertViewDelegate>{
    int result;
}

- (int) outPutMsg: (NSString *)msg numLines: (int)lines;
- (float) getWidthOfCGRect: (CGRect)rect;
- (int) getNumber;
- (int) addNum:(int)num1 num2:(int)num2;



@end
