//
//  AOCViewController.h
//  AOC_Wk2
//
//  Created by Nazir Shuqair on 2/10/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AOCViewController : UIViewController{
}

- (int) add:(int)num1 Num2:(int)num2;
- (int) getNumber;
- (BOOL) compare:(NSInteger)num1 nsInt2:(NSInteger)num2;
- (NSString *) appened:(NSString*)stringOne stringTwo:(NSString*)stringTwo;
- (void) displayAlertWithString:(NSString*)strOne stringTwo:(NSString*)strTwo;
- (UIImage *) getImage;

@end
