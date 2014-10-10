//
//  WeatherController.m
//  Weather Playground
//
//  Created by Brandon Beecroft on 10/9/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "WeatherController.h"

@implementation WeatherController

+ (WeatherController *)sharedInstance {

    static WeatherController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [WeatherController new];
    });
    return sharedInstance;
}

- (void)getWeatherWithName:(NSString *)name completion:(void (^)(NSArray *weather))completion {

    NSString *path = [NSString stringWithFormat:@"weather?q=%@", name];

    // In JSON api.openweathermap.org/data/2.5/weather?q=London

    // how to do params?
    // NSDictionary *params = @{@"q":name};

    [[NetworkController api] GET:path parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {

        // i get a response object back from openweathermap that is in JSON format
        NSLog(@"%@",responseObject);

        // double check that the object is a dictionary
        if ([responseObject isKindOfClass:[NSDictionary class]]) {
            NSLog(@"this is a dictionary");
        }

        // create an array to hold all the dictionaries
        NSMutableArray *weatherArray = [NSMutableArray new];

        // load each dictionary in responseObject into the array. each dictionary is converted to a weather object.
        for (NSDictionary *dictionary in responseObject) {
            [weatherArray addObject:[[Weather alloc] initWithDictionary:dictionary]];
        }

        // return the array to the view controller for display.
        completion(weatherArray);

    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"there was an error somewhere!");
        completion(nil);
    }];
}


// 6e9b0ae44c66c19a7b77f93935052b22

// api.openweathermap.org/data/2.5/weather?q=London,uk

@end
