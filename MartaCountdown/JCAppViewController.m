//
//  JCStationsViewController.m
//  MartaCountdown
//
//  Created by Chae O'Keefe on 3/18/14.
//  Copyright (c) 2014 ChaeOkay. All rights reserved.
//

#import "JCAppViewController.h"
#import "JCStationViewController.h"
#import "JCStation.h"
#import "JCParse.h"

@interface JCAppViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *stationsViewer;
@property (strong, nonatomic) NSMutableArray *stations;
@property (strong, nonatomic) NSArray *stationFileNames;
- (void)loadStations;
- (void)setScrollFrame;

@end

@implementation JCAppViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _stationFileNames = @[@"timbuktu", @"fiji"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadStations];
    [self setScrollFrame];
}

- (void)loadStations
{
    for (NSString *fileName in _stationFileNames)
    {
        JCStation *station = [[JCStation new] initWithFileName:fileName];
        float index = [_stationFileNames indexOfObject:fileName];
        JCStationViewController *stationController = [[JCStationViewController alloc] initWithStation:station
                                                                                            indexView:index];
        [_stationsViewer addSubview:stationController.view];
    }
}

- (void)setScrollFrame
{
    CGRect scrollFrame = self.view.bounds;
    scrollFrame.size.width *= [self.stationFileNames count];
    _stationsViewer.contentSize = scrollFrame.size;
    _stationsViewer.pagingEnabled = YES;
}

@end
