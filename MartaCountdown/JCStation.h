//
//  JCStation.h
//  MartaCountdown
//
//  Created by Chae O'Keefe on 3/18/14.
//  Copyright (c) 2014 ChaeOkay. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JCStation : NSObject

@property (nonatomic, strong) NSString *name;
- (instancetype)initWithName:(NSString *)name;

@end
