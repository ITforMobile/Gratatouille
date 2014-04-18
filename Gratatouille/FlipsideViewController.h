//
//  FlipsideViewController.h
//  Gratatouille
//
//  Created by Keith Bailly on 11/28/13.
//  Copyright (c) 2013 Keith Bailly All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end

@interface FlipsideViewController : UIViewController
{
    
IBOutlet UIWebView *wiki;

    
    
    
}

@property (weak, nonatomic) id <FlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
