//
//  NetworkController.m
//  CountryRest
//
//  Created by Joshua Howland on 6/17/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "NetworkController.h"

@implementation NetworkController

+ (AFHTTPSessionManager *)api {

    static AFHTTPSessionManager *api = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        api = [[AFHTTPSessionManager alloc] initWithBaseURL:[self baseURL]];
        api.responseSerializer = [AFJSONResponseSerializer serializer];

    });
    return api;
}


+ (NSURL *)baseURL {
    NSURL * url = [NSURL URLWithString:@"http://api.openweathermap.org/data/2.5/"];
    return url;
}


//+ (NSDictionary *)getParametersForMovieSearch:(NSDictionary *)params {
//
//    NSMutableDictionary * dict = [[NSMutableDictionary alloc] initWithDictionary:params];
//    //[dict setObject:api_key forKey:@"api_key"];
//    return dict;
//    
//}

@end
