//
//  WPViewController.m
//  Weather Playground
//
//  Created by Joshua Howland on 6/17/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "WPViewController.h"
#import "WeatherController.h"
#import "Weather.h"

@interface WPViewController ()


@end

@implementation WPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.cityField.delegate = self;
    self.weatherTempLabel.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)getWeather:(id)sender {
    [[WeatherController sharedInstance] getWeatherWithName:[self.cityField.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding] completion:^(NSArray *weather) {
       Weather *theWeather = weather.firstObject;

       NSLog(@"theWeather is: %@",theWeather.weatherDescription);

        self.cityLabel.text = theWeather.locationName;
        self.weatherDescriptionLabel.text = theWeather.weatherDescription;

        // not working?
        //self.weatherTempLabel.text = theWeather.weatherTemp;

        // TODO: fix this!
        self.weatherTempLabel.hidden = NO;
    }];

    [self.cityField resignFirstResponder];
}

@end
