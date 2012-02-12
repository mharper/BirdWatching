//
//  AddSightingViewController.h
//  BirdWatching
//
//  Created by Michael Harper on 2/12/12.
//  Copyright (c) 2012 Standalone Code LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AddSightingViewControllerDelegate;

@interface AddSightingViewController : UITableViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *birdNameInput;
@property (weak, nonatomic) IBOutlet UITextField *locationInput;
@property (weak, nonatomic) id <AddSightingViewControllerDelegate> delegate;

- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;

@end

@protocol AddSightingViewControllerDelegate <NSObject>
- (void)addSightingViewControllerDidCancel:(AddSightingViewController *)controller;
- (void)addSightingViewControllerDidFinish:(AddSightingViewController *)controller name:(NSString *)name location:(NSString *)location;
@end
