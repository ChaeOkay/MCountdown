//
//  JCStationViewController.m
//  MartaCountdown
//
//  Created by Chae O'Keefe on 3/19/14.
//  Copyright (c) 2014 ChaeOkay. All rights reserved.
//

#import "JCStationViewController.h"
#import "JCStation.h"

@interface JCStationViewController ()

@property (weak, nonatomic) IBOutlet UILabel *stationNameLabel;
@property (strong, nonatomic) JCStation *station;
@property (strong, nonatomic) NSMutableDictionary *stations;

@end

@implementation JCStationViewController

- (instancetype)initWithStation:(JCStation *)station indexView:(float)index
{
    self = [super init];
    if (self)
    {
        _station = station;
        UIView *stationView = self.view;
        CGFloat x = stationView.frame.size.width * (float)index;
        stationView.frame = CGRectMake(x, stationView.frame.origin.y, stationView.frame.size.width, stationView.frame.size.height);
    }
    return self;
}

- (void)viewDidLoad
{
    _stationNameLabel.text = self.station.name;
}

@end
