//
//  MainViewController.m
//  Gratatouille
//
//  Created by Keith Bailly on 11/28/13.
//  Copyright (c) 2013 Keith Bailly All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}




- (void)bannerViewDidLoadAd:(ADBannerView *)banner  {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1];
    [banner setAlpha:1];
    [UIView commitAnimations];
    
}

-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1];
    [banner setAlpha:0];
    [UIView commitAnimations];
}














-(IBAction)calculate {
    float A = ( [ticket.text floatValue]);
    float Z = A * .15;

    tip.text = [ [NSString alloc] initWithFormat:@"%.2f ",Z];
    currenttip.text = [ [NSString alloc] initWithFormat:@"%.2f ",Z];

}

- (IBAction)applychanges:(id)sender {
    int S1 = (int)(slider.value);
    float A =([ticket.text floatValue]);

    
    newtip.text = [NSString stringWithFormat:@"%.2F ",(slider.value*A)];
    percent.text = [NSString stringWithFormat:@"%.2F",(slider.value*100)];
    total.text = [NSString stringWithFormat:@"%.2F ",((slider.value*A)+A)];

    



}



- (IBAction)Done:(id)sender {
      [sender resignFirstResponder];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showAlternate"]) {
        [[segue destinationViewController] setDelegate:self];
    }
}

@end
