//
//  UIImage+weatherImage.m
//  Weather Playground
//
//  Created by Brandon Beecroft on 10/10/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "UIImage+weatherImage.h"

@implementation UIImage (weatherImage)

+ (UIImage *)imageForCity:(NSString *)icon {

    if ([icon isEqualToString:@"11n"]) {
        NSLog(@"thunderstorm at night");
        return [UIImage imageNamed:@"11n"];
    } else if ([icon isEqualToString:@"11d"]) {
        return [UIImage imageNamed:@"11d"];
    } else if ([icon isEqualToString:@"01d"]) {
        NSLog(@"day");
        return [UIImage imageNamed:@"01d"];
    } else if ([icon isEqualToString:@"01n"]) {
        NSLog(@"day");
        return [UIImage imageNamed:@"01n"];
    } else if ([icon isEqualToString:@"02d"]) {
        NSLog(@"day");
        return [UIImage imageNamed:@"02d"];
    } else if ([icon isEqualToString:@"02n"]) {
        NSLog(@"day");
        return [UIImage imageNamed:@"02n"];
    } else if ([icon isEqualToString:@"03d"]) {
        NSLog(@"day");
        return [UIImage imageNamed:@"03d"];
    } else if ([icon isEqualToString:@"03n"]) {
        NSLog(@"day");
        return [UIImage imageNamed:@"03n"];
    } else if ([icon isEqualToString:@"04d"]) {
        NSLog(@"day");
        return [UIImage imageNamed:@"04d"];
    } else if ([icon isEqualToString:@"04n"]) {
        NSLog(@"day");
        return [UIImage imageNamed:@"04n"];
    } else if ([icon isEqualToString:@"09d"]) {
        NSLog(@"day");
        return [UIImage imageNamed:@"09d"];
    } else if ([icon isEqualToString:@"09n"]) {
        NSLog(@"day");
        return [UIImage imageNamed:@"09n"];
    } else if ([icon isEqualToString:@"10d"]) {
        NSLog(@"day");
        return [UIImage imageNamed:@"10d"];
    } else if ([icon isEqualToString:@"10d"]) {
        NSLog(@"day");
        return [UIImage imageNamed:@"10n"];
    } else if ([icon isEqualToString:@"13d"]) {
        NSLog(@"day");
        return [UIImage imageNamed:@"13d"];
    } else if ([icon isEqualToString:@"13n"]) {
        NSLog(@"day");
        return [UIImage imageNamed:@"13n"];
    } else {
        NSLog(@"code not found. oh well. using default");
        return [UIImage imageNamed:@"clouds.jpg"];
    }
    
}
@end
