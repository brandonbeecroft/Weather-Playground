//
//  NetworkController.h
//  CountryRest
//
//  Created by Joshua Howland on 6/17/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>



//static const NSString *api_key = @"0e559f39aa4f8bd81c660235aaedd2a9";

@interface NetworkController : NSObject

+ (AFHTTPSessionManager *)api;
+ (NSURL *)baseURL;
//+ (NSDictionary *)getParametersForMovieSearch:(NSDictionary *)params;



@end
