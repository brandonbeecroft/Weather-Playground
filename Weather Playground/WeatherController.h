//
//  WeatherController.h
//  Weather Playground
//
//  Created by Brandon Beecroft on 10/9/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Weather.h"
#import "NetworkController.h"
#import "WPViewController.h"

@interface WeatherController : NSObject

+ (WeatherController *)sharedInstance;

- (void)getWeatherWithName:(NSString *)name completion:(void (^)(NSArray *weather))completion;

@end
