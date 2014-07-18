//
//  MBFDog.h
//  MansBestFriend
//
//  Created by Luis Carbuccia on 7/18/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MBFDog : NSObject

@property (nonatomic) int age;
@property (nonatomic, strong) NSString *dogBreed;
@property (strong, nonatomic) UIImage *dogImage;
@property (strong, nonatomic) NSString *dogName;


- (void)bark;

@end
