//
//  AOCViewController.m
//  AOC_Wk1
//
//  Created by Nazir Shuqair on 2/5/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "AOCViewController.h"

@interface AOCViewController ()

@end

@implementation AOCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Defining the 5 NSString items in the array
    
    strArray = @[
        @"NSA", @"Encryption", @"Threats", @"American Freedoms", @"Splinter Cell"
    ];
    
    // Mutable string created and allocated
    
    dynamicString = [[NSMutableString alloc] init];
    
    // int variable to hold array count - 2 for the "and"
    
    arrayCount = [strArray count] - 2;
    index = 0;
    
    // looping through array
    
    for (NSString *x in strArray) {
        [dynamicString appendString:x];
        // entering the if statement until its the last run through
        if (index < arrayCount + 1) {
        [dynamicString appendString:@", "];
            if (index == arrayCount) {
                [dynamicString appendString:@"and "];
            }
        }
        NSLog(@"%@", dynamicString);
        index++;
    }
    
    
    // Positioning of labels
    
    titleLabel =            [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 20.0f, 320.0f, 30.0f)];
    authorLabel =           [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 51.0f, 100.0f, 30.0f)];
    authorNameLabel =       [[UILabel alloc] initWithFrame:CGRectMake(101.0f, 51.0f, 219.0f, 30.0f)];
    publishedLabel =        [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 82.0f, 100.0f, 30.0f)];
    publishedDateLabel =    [[UILabel alloc] initWithFrame:CGRectMake(101.0f, 82.0f, 219.0f, 30.0f)];
    summeryLabel =          [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 113.0f, 100.0f, 30.0f)];
    bookSummeryLabel =      [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 144.0f, 320.0f, 300.0f)];
    listOItemsLabel =       [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 445.0f, 100, 30.0f)];
    listLabel =             [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 476.0f, 320.0f, 50.0f)];

    // Labels formating
    
    if (titleLabel != nil) {
        titleLabel.text = @"Tom Clancy's Splinter Cell #1";
        titleLabel.backgroundColor = [UIColor colorWithRed:255.f green: 190/255.f blue:0.0 alpha:1.0];
        // Used "NSTextAlignmentCenter" because "UITextAlignmentCenter" from the video is deprecated
        titleLabel.textAlignment = NSTextAlignmentCenter;
        titleLabel.textColor = [UIColor whiteColor];
    }
    if (authorLabel != nil && authorNameLabel != nil) {
        authorLabel.text = @"Author:";
        authorLabel.backgroundColor = [UIColor grayColor];
        // Used "NSTextAlignmentRight" because "UITextAlignmentRight" from the video is deprecated
        authorLabel.textAlignment = NSTextAlignmentRight;
        authorLabel.textColor = [UIColor colorWithRed:255.f green: 190/255.f blue:0.0 alpha:1.0];
        
        authorNameLabel.text = @"Tom Clancy";
        authorNameLabel.backgroundColor = [UIColor lightGrayColor];
        // Used "NSTextAlignmentLeft" because "UITextAlignmentLeft" from the video is deprecated
        authorNameLabel.textAlignment = NSTextAlignmentLeft;
        authorNameLabel.textColor = [UIColor colorWithRed:238/255.f green: 10/255.f blue:0/255.f alpha:0.7];
    }
    if (publishedLabel != nil && publishedDateLabel != nil) {
        publishedLabel.text = @"Published:";
        publishedLabel.backgroundColor = [UIColor colorWithRed:178/255.f green:223/255.f blue:238/255.f alpha:1.0];
        // Used "NSTextAlignmentRight" because "UITextAlignmentRight" from the video is deprecated
        publishedLabel.textAlignment = NSTextAlignmentRight;
        publishedLabel.textColor = [UIColor grayColor];
    
        publishedDateLabel.text = @"December 28, 2004";
        publishedDateLabel.backgroundColor = [UIColor colorWithRed:102/255.f green:139/255.f blue:139/255.f alpha:1.0];
        // Used "NSTextAlignmentLeft" because "UITextAlignmentLeft" from the video is deprecated
        publishedDateLabel.textAlignment = NSTextAlignmentLeft;
        publishedDateLabel.textColor = [UIColor colorWithRed:127/255.f green: 255/255.f blue:212/255.f alpha:1.0];
    }
    if (summeryLabel != nil && bookSummeryLabel != nil) {
        summeryLabel.text = @"Summery:";
        summeryLabel.backgroundColor = [UIColor colorWithRed:152/255.f green:251/255.f blue:152/255.f alpha:1.0];
        // Used "NSTextAlignmentLeft" because "UITextAlignmentLeft" from the video is deprecated
        summeryLabel.textAlignment = NSTextAlignmentLeft;
        summeryLabel.textColor = [UIColor colorWithRed:139/255.f green: 90/255.f blue:0/255.f alpha:1.0];
    
        bookSummeryLabel.text = @"In response to the growing use of sophisticated digital encryption to conceal potential threats to the United States, the National Security Agency has ushered forth the new dawn of intelligence-gathering techniques. The top-secret initiative is dubbed Third Echelon.  Its existence denied by the U.S. government, Third Echelon deploys a lone field operative. He is sharp, nearly invisible, and deadly. And he has the right to spy, steal, destroy, and assassinate to protect American freedoms. His name is Sam Fisher. He is a Splinter Cell®.";
        bookSummeryLabel.numberOfLines = 16;
        bookSummeryLabel.backgroundColor = [UIColor colorWithRed:51/255.f green: 153/255.f blue:255/255.f alpha:1.0];
        // Used "NSTextAlignmentCenter" because "UITextAlignmentCenter" from the video is deprecated
        bookSummeryLabel.textAlignment = NSTextAlignmentCenter;
        bookSummeryLabel.textColor = [UIColor colorWithRed:255 green: 204/255.f blue:153/255.f alpha:1.0];
    }
    if (listOItemsLabel != nil && listLabel != nil) {
        
        listOItemsLabel.text = @"List of items:";
        listOItemsLabel.backgroundColor = [UIColor colorWithRed:255/255.f green: 138/255.f blue:197/255.f alpha:1.0];
        // Used "NSTextAlignmentLeft" because "UITextAlignmentLeft" from the video is deprecated
        listOItemsLabel.textAlignment = NSTextAlignmentLeft;
        listOItemsLabel.textColor = [UIColor colorWithRed:51/255.f green: 51/255.f blue:51/255.f alpha:1.0];
        
        listLabel.text = dynamicString;
        listLabel.numberOfLines = 2;
        listLabel.backgroundColor = [UIColor colorWithRed:94/255.f green: 255/255.f blue:0/255.f alpha:0.4];
        // Used "NSTextAlignmentCenter" because "UITextAlignmentCenter" from the video is deprecated
        listLabel.textAlignment = NSTextAlignmentCenter;
        listLabel.textColor = [UIColor colorWithRed:65/255.f green: 138/255.f blue:197/255.f alpha:1.0];
    }
    
    
    // Adding labels to the main UIView
    
    [self.view addSubview:titleLabel];
    [self.view addSubview:authorLabel];
    [self.view addSubview:authorNameLabel];
    [self.view addSubview:publishedLabel];
    [self.view addSubview:publishedDateLabel];
    [self.view addSubview:summeryLabel];
    [self.view addSubview:bookSummeryLabel];
    [self.view addSubview:listOItemsLabel];
    [self.view addSubview:listLabel];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
