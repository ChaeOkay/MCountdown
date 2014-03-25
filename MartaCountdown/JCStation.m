//
//  JCStation.m
//  MartaCountdown
//
//  Created by Chae O'Keefe on 3/18/14.
//  Copyright (c) 2014 ChaeOkay. All rights reserved.
//

#import "JCStation.h"
#import "JCParse.h"

@implementation JCStation

- (instancetype)initWithFileName:(NSString *)name
{
    self = [super init];
    if (self)
    {
        NSDictionary *stationDictionary = [JCParse withFile:name];
        _name = [stationDictionary valueForKeyPath:@"station.name"];
    }
    return self;
}

@end
