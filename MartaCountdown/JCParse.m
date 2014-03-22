//
//  JCParse.m
//  MartaCountdown
//
//  Created by Chae O'Keefe on 3/22/14.
//  Copyright (c) 2014 ChaeOkay. All rights reserved.
//

#import "JCParse.h"

@implementation JCParse

+ (NSDictionary *) withFile:(NSString *)fileName
{
    NSString *path = [[NSBundle mainBundle] pathForResource:fileName ofType:@"json"];
    NSData *stationData = [NSData dataWithContentsOfFile:path];
    NSError *errors;

    NSDictionary *stationDictionary = [NSJSONSerialization JSONObjectWithData:stationData
                                                                      options:0
                                                                        error:&errors];
    return stationDictionary;
}

@end
