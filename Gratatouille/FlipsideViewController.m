//
//  FlipsideViewController.m
//  Gratatouille
//
//  Created by Keith Bailly on 11/28/13.
//  Copyright (c) 2013 Keith Bailly All rights reserved.
//

#import "FlipsideViewController.h"

@interface FlipsideViewController ()

@end

@implementation FlipsideViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.


    
    NSURL *myURL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Gratuity"];
    
    NSURLRequest *myRequest = [NSURLRequest requestWithURL:myURL];
    [wiki loadRequest:myRequest];
    




}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    [self.delegate flipsideViewControllerDidFinish:self];
}

@end
