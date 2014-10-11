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

@property (weak, nonatomic) IBOutlet UIImageView *weatherBackground;

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

-(double)farhenheitFromKelvin:(NSString *)value {
    //Formula for converting from Kelvin =((VALUE-273)*1.8)+32

    double numberValue = [value doubleValue];
    double calc = ((numberValue-273)*1.8)+32;

    return calc;
}

- (IBAction)getWeather:(id)sender {
    [[WeatherController sharedInstance] getWeatherWithName:[self.cityField.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding] completion:^(NSArray *weather) {
       Weather *theWeather = weather.firstObject;

       NSLog(@"theWeather is: %@",theWeather.weatherDescription);

        self.cityLabel.text = theWeather.locationName;
        self.weatherDescriptionLabel.text = theWeather.weatherDescription;
        self.weatherBackground.image = [UIImage imageForCity:theWeather.weatherIcon];
//        if ([theWeather.weatherIcon isEqualToString:@"11n"]) {
//            NSLog(@"thunderstorm at night");
//            self.weatherBackground.image = [UIImage imageNamed:@"11n"];
//        } else if ([theWeather.weatherIcon isEqualToString:@"11d"]) {
//            self.weatherBackground.image = [UIImage imageNamed:@"11d"];
//        } else if ([theWeather.weatherIcon isEqualToString:@"01d"]) {
//            NSLog(@"day");
//            self.weatherBackground.image = [UIImage imageNamed:@"01d"];
//        } else if ([theWeather.weatherIcon isEqualToString:@"01n"]) {
//            NSLog(@"day");
//            self.weatherBackground.image = [UIImage imageNamed:@"01n"];
//        } else if ([theWeather.weatherIcon isEqualToString:@"02d"]) {
//            NSLog(@"day");
//            self.weatherBackground.image = [UIImage imageNamed:@"02d"];
//        } else if ([theWeather.weatherIcon isEqualToString:@"02n"]) {
//            NSLog(@"day");
//            self.weatherBackground.image = [UIImage imageNamed:@"02n"];
//        } else if ([theWeather.weatherIcon isEqualToString:@"03d"]) {
//            NSLog(@"day");
//            self.weatherBackground.image = [UIImage imageNamed:@"03d"];
//        } else if ([theWeather.weatherIcon isEqualToString:@"03n"]) {
//            NSLog(@"day");
//            self.weatherBackground.image = [UIImage imageNamed:@"03n"];
//        } else if ([theWeather.weatherIcon isEqualToString:@"04d"]) {
//            NSLog(@"day");
//            self.weatherBackground.image = [UIImage imageNamed:@"04d"];
//        } else if ([theWeather.weatherIcon isEqualToString:@"04n"]) {
//            NSLog(@"day");
//            self.weatherBackground.image = [UIImage imageNamed:@"04n"];
//        } else if ([theWeather.weatherIcon isEqualToString:@"09d"]) {
//            NSLog(@"day");
//            self.weatherBackground.image = [UIImage imageNamed:@"09d"];
//        } else if ([theWeather.weatherIcon isEqualToString:@"09n"]) {
//            NSLog(@"day");
//            self.weatherBackground.image = [UIImage imageNamed:@"09n"];
//        } else if ([theWeather.weatherIcon isEqualToString:@"10d"]) {
//            NSLog(@"day");
//            self.weatherBackground.image = [UIImage imageNamed:@"10d"];
//        } else if ([theWeather.weatherIcon isEqualToString:@"10d"]) {
//            NSLog(@"day");
//            self.weatherBackground.image = [UIImage imageNamed:@"10n"];
//        } else if ([theWeather.weatherIcon isEqualToString:@"13d"]) {
//            NSLog(@"day");
//            self.weatherBackground.image = [UIImage imageNamed:@"13d"];
//        } else if ([theWeather.weatherIcon isEqualToString:@"13n"]) {
//            NSLog(@"day");
//            self.weatherBackground.image = [UIImage imageNamed:@"13n"];
//        } else {
//            NSLog(@"code not found. oh well. using default");
//            self.weatherBackground.image = [UIImage imageNamed:@"clouds.jpg"];
//        }

        // not working?
        self.weatherTempLabel.text = [NSString stringWithFormat:@"%.0f°", [self farhenheitFromKelvin:theWeather.weatherTemp]];




        // TODO: fix this!
        self.weatherTempLabel.hidden = NO;
    }];

    [self.cityField resignFirstResponder];
}

@end
