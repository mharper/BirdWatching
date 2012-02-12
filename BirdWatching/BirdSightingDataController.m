//
//  BirdSightingDataController.m
//  BirdWatching
//
//  Created by Michael Harper on 2/12/12.
//  Copyright (c) 2012 Standalone Code LLC. All rights reserved.
//

#import "BirdSightingDataController.h"

@interface BirdSightingDataController ()
- (void)initializeDefaultDataList;
@end

@implementation BirdSightingDataController

@synthesize masterBirdSightingList;

- (void)initializeDefaultDataList {
  NSMutableArray *sightingList = [[NSMutableArray alloc] init];
  self.masterBirdSightingList = sightingList;
  [self addBirdSightingWithName:@"Pigeon" location:@"Everywhere"];
}

- (void)setMasterBirdSightingList:(NSMutableArray *)newList {
  if (masterBirdSightingList != newList) {
    masterBirdSightingList = [newList mutableCopy];
  }
}

- (id)init {
  if (self = [super init]) {
    [self initializeDefaultDataList];
    return self;
  }
  return nil;
}

- (NSUInteger)countOfList {
  return [self.masterBirdSightingList count];
}

- (BirdSighting *)objectInListAtIndex:(NSUInteger)theIndex {
  return [self.masterBirdSightingList objectAtIndex:theIndex];
}

- (void)addBirdSightingWithName:(NSString *)inputBirdName location:(NSString *)inputLocation {
  BirdSighting *sighting;
  NSDate *today = [NSDate date];
  sighting = [[BirdSighting alloc] initWithName:inputBirdName location:inputLocation date:today];
  [self.masterBirdSightingList addObject:sighting];
}

@end
