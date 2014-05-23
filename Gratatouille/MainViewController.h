//
//  MainViewController.h
//  Gratatouille
//
//  Created by Keith Bailly on 11/28/13.
//  Version 1.1 releases May 23, 2014
//  Copyright (c) 2013, 2104 Keith Bailly All rights reserved.
//  KeithMobile.com is a division of Clever Industries, LLC

#import "FlipsideViewController.h"
#import <iAd/iAd.h>

#import <CoreData/CoreData.h>

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate, ADBannerViewDelegate> {

int A; //ticket amount //
int C; //percentage of tip //
    int B; //total of Tip and Ticket //


int Z;  // Tip Amount //
    
    //Slider
    int S1;

    
    
IBOutlet UITextField *ticket;  //receive amount to base tip on //
IBOutlet UILabel   *tip;    // display amount to tip //
IBOutlet UILabel   *currenttip;
IBOutlet UILabel   *newtip;    // display adjusted amount to tip //
IBOutlet UILabel   *percent;
IBOutlet UILabel *total; // version 1.1 addition
    
__weak IBOutlet UISlider *slider;   // Slider Value //
    



}



@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

- (IBAction) calculate;  // figure tip //
- (IBAction) applychanges:(id)sender;  // slider  //

-(IBAction) Done:(id) sender;




@end
