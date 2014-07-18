//
//  MBFViewController.m
//  MansBestFriend
//
//  Created by Luis Carbuccia on 7/18/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

#import "MBFViewController.h"
#import "MBFDog.h"
#import "MBFPuppy.m"

@interface MBFViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *dogImage;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;
@property (nonatomic) int currentIndex;
@end

@implementation MBFViewController
- (IBAction)buttonPressed:(id)sender
{
    int numberOfDogs = [self.dogArray count];
    int randomIndex = arc4random() % numberOfDogs;
    
    while (self.currentIndex == randomIndex)
        randomIndex = arc4random() % numberOfDogs;
    
    self.currentIndex = randomIndex;
    
    MBFDog *randomDog = [self.dogArray objectAtIndex:randomIndex];
    
    self.dogImage.image = randomDog.dogImage;
    self.nameLabel.text = randomDog.dogName;
    self.breedLabel.text = randomDog.dogBreed;
    
    [UIView transitionWithView:self.view duration:2.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{self.dogImage.image = randomDog.dogImage;
        self.breedLabel.text = randomDog.dogBreed;
        self.nameLabel.text = randomDog.dogName;
    } completion:^(BOOL finished){}];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    MBFDog *myDog = [[MBFDog alloc] init];
    myDog.dogName = @"Boston";
    myDog.dogBreed = @"St. Bernard";
    myDog.age = 2;
    myDog.dogImage = [UIImage imageNamed:@"St.Bernard.JPG"];
    
    NSLog(@"My dog is named %@. It is %d years old. The breed is %@", myDog.dogName, myDog.age, myDog.dogBreed);
    
    [myDog bark];
    [myDog barkANumberOfTimes:7];
    
    [myDog barkANumberOfTimes:3 loudly:YES];
    
    NSLog(@"My dog's age in dog years is %d", [myDog convertAgeToDogYears:2]);
    
    self.dogImage.image = myDog.dogImage;
    self.nameLabel.text = myDog.dogName;
    self.breedLabel.text = myDog.dogBreed;
    
    MBFDog *secondDog = [[MBFDog alloc] init];
    secondDog.dogName = @"Wishbone";
    secondDog.dogBreed = @"Jack Russell Terrier";
    secondDog.dogImage = [UIImage imageNamed:@"JRT.jpg"];
    
    MBFDog *thirdDog = [[MBFDog alloc] init];
    thirdDog.dogName = @"Lassie";
    thirdDog.dogBreed = @"Border Collie";
    thirdDog.dogImage = [UIImage imageNamed:@"BorderCollie.jpg"];
    
    MBFDog *fourthDog = [[MBFDog alloc] init];
    fourthDog.dogName = @"Angel";
    fourthDog.dogBreed = @"Greyhound";
    fourthDog.dogImage = [UIImage imageNamed:@"ItalianGreyhound.jpg"];
    
    self.dogArray = [[NSMutableArray alloc] init];
    [self.dogArray addObject:myDog];
    [self.dogArray addObject:secondDog];
    [self.dogArray addObject:thirdDog];
    [self.dogArray addObject:fourthDog];
    
    MBFPuppy *littlePuppy = [[MBFPuppy alloc] init];
    [littlePuppy givePuppyEyes];
    littlePuppy.dogName = @"Bo O";
    littlePuppy.dogBreed = @"Portuguese Water Dog";
    littlePuppy.dogImage = [UIImage imageNamed:@"Bo.jpg"];
    [self.dogArray addObject:littlePuppy];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
