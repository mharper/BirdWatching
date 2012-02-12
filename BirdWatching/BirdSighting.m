//
//  BirdSighting.m
//  BirdWatching
//
//  Created by Michael Harper on 2/12/12.
//  Copyright (c) 2012 Standalone Code LLC. All rights reserved.
//

#import "BirdSighting.h"

@implementation BirdSighting

@synthesize location, name, date;

-(id) initWithName:(NSString *)aname location:(NSString *)alocation date:(NSDate *)adate
{
  {
    self = [super init];
    if (self) {
      name = aname;
      location = alocation;
      date = adate;
      return self;
    }
    return nil;
  }
}

@end
