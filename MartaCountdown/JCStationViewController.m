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

@end

@implementation JCStationViewController

- (instancetype)initWithStation:(JCStation *)station
{
    self = [super init];
    if (self)
    {
        _station = station;
    }
    return self;
}

- (void)viewDidLoad
{
    _stationNameLabel.text = self.station.name;
}

@end
