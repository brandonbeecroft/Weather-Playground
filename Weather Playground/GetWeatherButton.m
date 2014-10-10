//
//  GetWeatherButton.m
//  Weather Playground
//
//  Created by Brandon Beecroft on 10/10/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "GetWeatherButton.h"
#import "WeatherDesign.h"

@implementation GetWeatherButton


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [WeatherDesign drawWeatherIconWithFrame:self.bounds];

}


@end
