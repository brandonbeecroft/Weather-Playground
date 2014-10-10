//
//  Weather.m
//  Weather Playground
//
//  Created by Brandon Beecroft on 10/9/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "Weather.h"

//locationName, weatherMain, weatherDescription, weatherIcon, weatherTemp

@implementation Weather


- (id)initWithDictionary:(NSDictionary *)dictionary {

    self = [super init];
    if (self) {

        if ([dictionary isKindOfClass:[NSDictionary class]]) {
            NSLog(@"still a dictionary");
        }
        self.locationName = dictionary[@"name"];
        self.weatherMain = dictionary[@"weather"][0][@"main"];
        self.weatherDescription = dictionary[@"weather"][0][@"description"];
        self.weatherIcon = dictionary[@"weather"][0][@"icon"];
        self.weatherTemp = dictionary[@"main"][@"temp"];
    }
    return self;
}


@end
