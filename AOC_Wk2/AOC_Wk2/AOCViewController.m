//
//  AOCViewController.m
//  AOC_Wk2
//
//  Created by Nazir Shuqair on 2/10/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "AOCViewController.h"

@interface AOCViewController ()

@end

@implementation AOCViewController

- (void)viewDidLoad
{
    // Adding background Image
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[self getImage]];
    [UIColor clearColor];
    //-------------------------------------------------------------------------

    NSString *stringOne = @"The first string \"stringOne\" ";
    NSString *stringTwo = @"will be compained with \"stringTwo\".";
    NSString *alertOne = @"Pop up! Muahahaha!!!";
    //-------------------------------------------------------------------------


    // 1 - Call the Append method with two NSStrings and display a UIAlertView with the appended string.
    
    NSString *appenedResult = [self appened:stringOne stringTwo:stringTwo];
    NSLog(@"%@", appenedResult);
    
    [self displayAlertWithString:alertOne stringTwo:appenedResult];
    //-------------------------------------------------------------------------

    // 2 - Call the Add function passing in two integer values. Capture the return of this function into a variable.
    // int numbers are coming from the getNumber method that generates a random number
    
    int additionResult = [self add:[self getNumber] Num2:[self getNumber]];
    NSLog(@"%d", additionResult);
    //-------------------------------------------------------------------------
    
    // 3 - Bundle the returned integer into an NSNumber and then convert it to a NSString and pass it to the DisplayAlertWithString function.
    
    NSNumber *nsNum = [[NSNumber alloc] initWithInt:additionResult];
    NSString *numToStr = [nsNum stringValue];
    NSLog(@"%@", numToStr);
    [self displayAlertWithString:alertOne stringTwo:numToStr];
    //-------------------------------------------------------------------------

    // 4 - Give it some text for the title. The message will read, "The number is 00". Replace the 00 with the integer passed into the function.
    
    NSString *numWithTitle = [self appened:@"The number is " stringTwo:numToStr];
    [self displayAlertWithString:alertOne stringTwo:numWithTitle];
    //-------------------------------------------------------------------------

    // 5 - Call the Compare function with two integer values. If Compare returns YES, display an UIAlertView both with the input values and the result using the DisplayAlertWithString function
    
    NSInteger compareOne = 5;
    NSInteger compareTwo = 5;
    bool compareNSInt = [self compare:compareOne nsInt2:compareTwo];
    NSLog(@"The 2 numbers %@ the same!", (compareNSInt ? @"are" : @"aren't"));
    if (compareNSInt == true) {
        NSNumber *nsCompare1 = [[NSNumber alloc] initWithLong:compareOne];
        NSNumber *nsCompare2 = [[NSNumber alloc] initWithLong:compareTwo];
        NSString *strCompare1 = [nsCompare1 stringValue];
        NSString *strCompare2 = [nsCompare2 stringValue];
        NSString *result1 = [self appened:strCompare1 stringTwo:@" is equal to "];
        NSString *result2 = [self appened:result1 stringTwo:strCompare2];
        NSLog(@"testing %@",result2);
        [self displayAlertWithString:alertOne stringTwo:result2];
    }
    //-------------------------------------------------------------------------
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

// Addition method

- (int) add:(int)num1 Num2:(int)num2{
    int result = num1 + num2;
    return result;
}

// get random number

- (int) getNumber{
    int random = arc4random() % 67;
    return random;
}

// NSInteger comparison

- (BOOL) compare:(NSInteger)num1 nsInt2:(NSInteger)num2{
    
    if (num1 == num2) {
        return true;
    }else{
        return false;
    }
}

// Appending NSString

- (NSString *) appened:(NSString*)stringOne stringTwo:(NSString*)stringTwo{
    
    NSMutableString *result = [[NSMutableString alloc] init];
    
    [result appendString:stringOne];
    [result appendString:stringTwo];
    
    return result;
}

// Adding NSString to UIAlert view

- (void) displayAlertWithString:(NSString*)strOne stringTwo:(NSString*)strTwo{
    
    UIAlertView *alerView = [[UIAlertView alloc] initWithTitle:strOne message:strTwo delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    if (alerView != nil){
        [alerView show];
    }
}

// Centers and fills screen with image

- (UIImage *) getImage{
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"iPhone5@2x copy.png"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
