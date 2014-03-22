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

@end

@implementation JCAppViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _stationsViewer.pagingEnabled = YES;

    CGRect scrollFrame = self.view.bounds;
    scrollFrame.size.width *= 3.0;

    NSDictionary *stationDictionary = [JCParse withFile:@"timbuktu"];
    [_stations addObject:stationDictionary];

    NSString *stationName = [stationDictionary valueForKeyPath:@"station.name"];


    for (int i = 0; i < 3; i++){

        JCStation *station = [[JCStation new] initWithName:[NSString stringWithFormat:@"%@ %d", stationName, i]];
        JCStationViewController *stationController = [[JCStationViewController alloc] initWithStation:station];

        UIView *stationView = stationController.view;

        int x = stationView.frame.size.width * i;

        stationView.frame = CGRectMake(x, stationView.frame.origin.y, stationView.frame.size.width, stationView.frame.size.height);
        [_stationsViewer addSubview:stationController.view];
    }
    _stationsViewer.contentSize = scrollFrame.size;
}

@end
