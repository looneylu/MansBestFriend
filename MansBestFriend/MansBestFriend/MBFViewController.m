//
//  MBFViewController.m
//  MansBestFriend
//
//  Created by Luis Carbuccia on 7/18/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

#import "MBFViewController.h"
#import "MBFDog.h"

@interface MBFViewController ()

@end

@implementation MBFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    MBFDog *myDog = [[MBFDog alloc] init];
    myDog.dogName = @"Boston";
    myDog.dogBreed = @"St. Bernard";
    myDog.age = 2;
    
    NSLog(@"My dog is named %@. It is %d years old. The breed is %@", myDog.dogName, myDog.age, myDog.dogBreed);
    
    [myDog bark];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
