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

@property (weak, nonatomic) IBOutlet UITextField *cityField;

@end

@implementation WPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)getWeather:(id)sender {
    [[WeatherController sharedInstance] getWeatherWithName:[self.cityField.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding] completion:^(NSArray *weather) {
       Weather *theWeather = weather.firstObject;

        NSLog(@"theWeather is: %@",theWeather.description);
    }];
}

@end
