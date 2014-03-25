//
//  JCStationViewController.h
//  MartaCountdown
//
//  Created by Chae O'Keefe on 3/19/14.
//  Copyright (c) 2014 ChaeOkay. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JCStation;

@interface JCStationViewController : UIViewController

- (instancetype)initWithStation:(JCStation *)station indexView:(float)index;

@end
