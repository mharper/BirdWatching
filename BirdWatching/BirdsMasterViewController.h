//
//  BirdsMasterViewController.h
//  BirdWatching
//
//  Created by Michael Harper on 2/12/12.
//  Copyright (c) 2012 Standalone Code LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BirdSightingDataController.h"

@class BirdsDetailViewController;

@interface BirdsMasterViewController : UITableViewController

@property (strong, nonatomic) BirdsDetailViewController *detailViewController;
@property (nonatomic, retain) BirdSightingDataController *dataController;

@end
