//
//  JCStation.m
//  MartaCountdown
//
//  Created by Chae O'Keefe on 3/18/14.
//  Copyright (c) 2014 ChaeOkay. All rights reserved.
//

#import "JCStation.h"

@implementation JCStation

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self)
    {
        _name = name;
    }
    return self;
}

@end
