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
	// Do any additional setup after loading the view, typically from a nib.
    
    titleLabel =            [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 20.0f, 320.0f, 30.0f)];
    authorLabel =           [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 51.0f, 100.0f, 30.0f)];
    authorNameLabel =       [[UILabel alloc] initWithFrame:CGRectMake(101.0f, 51.0f, 219.0f, 30.0f)];
    publishedLabel =        [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 82.0f, 100.0f, 30.0f)];
    publishedDateLabel =    [[UILabel alloc] initWithFrame:CGRectMake(101.0f, 82.0f, 219.0f, 30.0f)];
    summeryLabel =          [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 113.0f, 100.0f, 30.0f)];
    bookSummeryLabel =      [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 144.0f, 320.0f, 300.0f)];
    listOItemsLabel =       [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 445.0f, 100, 30.0f)];
    listLabel =             [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 20.0f, 320.0f, 30.0f)];

    
    if (titleLabel != nil) {
        titleLabel.text = @"Tom Clancy's Splinter Cell #1";
        titleLabel.backgroundColor = [UIColor grayColor];
        //Used "NSTextAlignmentCenter" because "UITextAlignmentCenter" from the video is deprecated
        titleLabel.textAlignment = NSTextAlignmentCenter;
        titleLabel.textColor = [UIColor colorWithRed:255.f green: 190/255.f blue:0.0 alpha:1.0];
    }
    if (authorLabel != nil) {
        authorLabel.text = @"Author:";
        authorLabel.backgroundColor = [UIColor grayColor];
        //Used "NSTextAlignmentCenter" because "UITextAlignmentCenter" from the video is deprecated
        authorLabel.textAlignment = NSTextAlignmentRight;
        authorLabel.textColor = [UIColor colorWithRed:255.f green: 190/255.f blue:0.0 alpha:1.0];
    }
    if (authorNameLabel != nil) {
        authorNameLabel.text = @"Tom Clancy";
        authorNameLabel.backgroundColor = [UIColor grayColor];
        //Used "NSTextAlignmentCenter" because "UITextAlignmentCenter" from the video is deprecated
        authorNameLabel.textAlignment = NSTextAlignmentLeft;
        authorNameLabel.textColor = [UIColor colorWithRed:255.f green: 190/255.f blue:0.0 alpha:1.0];
    }
    if (publishedLabel != nil) {
        publishedLabel.text = @"Published:";
        publishedLabel.backgroundColor = [UIColor grayColor];
        //Used "NSTextAlignmentCenter" because "UITextAlignmentCenter" from the video is deprecated
        publishedLabel.textAlignment = NSTextAlignmentRight;
        publishedLabel.textColor = [UIColor colorWithRed:255.f green: 190/255.f blue:0.0 alpha:1.0];
    }
    if (publishedDateLabel != nil) {
        publishedDateLabel.text = @"December 28, 2004";
        publishedDateLabel.backgroundColor = [UIColor grayColor];
        //Used "NSTextAlignmentCenter" because "UITextAlignmentCenter" from the video is deprecated
        publishedDateLabel.textAlignment = NSTextAlignmentLeft;
        publishedDateLabel.textColor = [UIColor colorWithRed:255.f green: 190/255.f blue:0.0 alpha:1.0];
    }
    if (summeryLabel != nil) {
        summeryLabel.text = @"Summery:";
        summeryLabel.backgroundColor = [UIColor grayColor];
        //Used "NSTextAlignmentCenter" because "UITextAlignmentCenter" from the video is deprecated
        summeryLabel.textAlignment = NSTextAlignmentLeft;
        summeryLabel.textColor = [UIColor colorWithRed:255.f green: 190/255.f blue:0.0 alpha:1.0];
    }
    if (bookSummeryLabel != nil) {
        bookSummeryLabel.text = @"In response to the growing use of sophisticated digital encryption to conceal potential threats to the United States, the National Security Agency has ushered forth the new dawn of intelligence-gathering techniques. The top-secret initiative is dubbed Third Echelon.  Its existence denied by the U.S. government, Third Echelon deploys a lone field operative. He is sharp, nearly invisible, and deadly. And he has the right to spy, steal, destroy, and assassinate to protect American freedoms. His name is Sam Fisher. He is a Splinter Cell®.";
        bookSummeryLabel.numberOfLines = 16;
        bookSummeryLabel.backgroundColor = [UIColor grayColor];
        //Used "NSTextAlignmentCenter" because "UITextAlignmentCenter" from the video is deprecated
        bookSummeryLabel.textAlignment = NSTextAlignmentCenter;
        bookSummeryLabel.textColor = [UIColor colorWithRed:255.f green: 190/255.f blue:0.0 alpha:1.0];
    }
    if (listOItemsLabel != nil) {
        listOItemsLabel.text = @"List of items:";
        listOItemsLabel.backgroundColor = [UIColor grayColor];
        //Used "NSTextAlignmentCenter" because "UITextAlignmentCenter" from the video is deprecated
        listOItemsLabel.textAlignment = NSTextAlignmentLeft;
        listOItemsLabel.textColor = [UIColor colorWithRed:255.f green: 190/255.f blue:0.0 alpha:1.0];
    }
    
    
    [self.view addSubview:titleLabel];
    [self.view addSubview:authorLabel];
    [self.view addSubview:authorNameLabel];
    [self.view addSubview:publishedLabel];
    [self.view addSubview:publishedDateLabel];
    [self.view addSubview:summeryLabel];
    [self.view addSubview:bookSummeryLabel];
    [self.view addSubview:listOItemsLabel];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
