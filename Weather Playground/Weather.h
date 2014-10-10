//
//  Weather.h
//  Weather Playground
//
//  Created by Brandon Beecroft on 10/9/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Weather : NSObject

//locationName, weatherMain, weatherDescription, weatherIcon, weatherTemp
@property (nonatomic, strong) NSString *locationName;
@property (nonatomic, strong) NSString *weatherMain;
@property (nonatomic, strong) NSString *weatherDescription;
@property (nonatomic, strong) NSString *weatherIcon;
@property (nonatomic, strong) NSString *weatherTemp;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end
