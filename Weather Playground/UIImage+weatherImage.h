//
//  UIImage+weatherImage.h
//  Weather Playground
//
//  Created by Brandon Beecroft on 10/10/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (weatherImage)

+ (UIImage *)imageForCity:(NSString *)icon;

@end
