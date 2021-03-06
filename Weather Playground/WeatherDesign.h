//
//  WeatherDesign.h
//  Weather App
//
//  Created by Brandon Beecroft on 10/10/14.
//  Copyright (c) 2014 Awesometistic. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface WeatherDesign : NSObject

// iOS Controls Customization Outlets
@property(strong, nonatomic) IBOutletCollection(NSObject) NSArray* weatherIconTargets;

// Colors
+ (UIColor*)color;
+ (UIColor*)weatherGray;

// Drawing Methods
+ (void)drawWeatherIconWithFrame: (CGRect)frame;

// Generated Images
+ (UIImage*)imageOfWeatherIconWithFrame: (CGRect)frame;

@end
