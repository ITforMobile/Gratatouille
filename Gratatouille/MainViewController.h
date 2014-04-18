//
//  MainViewController.h
//  Gratatouille
//
//  Created by Keith Bailly on 11/28/13.
//  Copyright (c) 2013 Keith Bailly All rights reserved.
//

#import "FlipsideViewController.h"

#import <CoreData/CoreData.h>

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate> {

int A; //ticket amount //
int C; //percentage of tip //
int F; //total of Tip and Ticket //

int Z;  // Tip Amount //
    
    //Slider
    int S1;

    
    
IBOutlet UITextField *ticket;  //receive amount to base tip on //
IBOutlet UILabel   *tip;    // display amount to tip //
IBOutlet UILabel   *currenttip;
IBOutlet UILabel   *newtip;    // display adjusted amount to tip //
IBOutlet UILabel   *percent;
    
__weak IBOutlet UISlider *slider;   // Slider Value //
    



}



@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

- (IBAction) calculate;  // figure tip //
- (IBAction)applychanges:(id)sender;  // slider  //

-(IBAction) Done:(id) sender;




@end
