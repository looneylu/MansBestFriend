//
//  MBFDog.m
//  MansBestFriend
//
//  Created by Luis Carbuccia on 7/18/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

#import "MBFDog.h"

@implementation MBFDog


- (void)bark
{
    NSLog(@"woof");
}


- (void)barkANumberOfTimes:(int)numberOfTimes
{
    for (int i = 0 ; i < numberOfTimes ; i ++)
        [self bark];
}



- (void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud
{
    if (isLoud)
        for (int i = 1 ; i <= numberOfTimes ; i++){
            NSLog(@"WOOF!");
        }
    else
        for (int i = 1 ; i <= numberOfTimes ; i++){
            NSLog(@"yip");
        }
}


- (void)changeBreedToWerewolf
{
    self.dogBreed = @"Werewolf";
}


- (int) convertAgeToDogYears:(int)age
{
    int newAge = age * 7;
    
    return newAge;
}



@end
