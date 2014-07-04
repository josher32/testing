//
//  JMMViewController.m
//  Man's Best Friend
//
//  Created by h605506 on 6/14/14.
//  Copyright (c) 2014 Josher. All rights reserved.
//

#import "JMMViewController.h"
#import "JMMDOG.h"
#import "JMMPuppy.h"

@interface JMMViewController ()

@end

@implementation JMMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    JMMDOG *myDog = [[JMMDOG alloc]init];
    myDog.name = @"Nana";
    myDog.breed = @"St Bernard";
    myDog.age = 3;
    myDog.image = [UIImage imageNamed:@"St.Bernard.JPG"];
    
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    self.currentIndex = 0;
    
    JMMDOG *secondDog = [[JMMDOG alloc]init];
    secondDog.name = @"Wishbone";
    secondDog.breed = @"Jack Russell Terrier";
    secondDog.image = [UIImage imageNamed:@"JRT.jpg"];
    
    JMMDOG *thirdDog = [[JMMDOG alloc]init];
    thirdDog.name = @"Lassie";
    thirdDog.breed = @"Collie";
    thirdDog.image = [UIImage imageNamed:@"BorderCollie.jpg"];
    
    JMMDOG *fourthDog = [[JMMDOG alloc]init];
    fourthDog.name = @"Angel";
    fourthDog.breed = @"Greyhound";
    fourthDog.image = [UIImage imageNamed:@"ItalianGreyhound.jpg"];
    
    self.myDogs =[[NSMutableArray alloc]init];
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
    
    JMMPuppy *littlePuppy = [[JMMPuppy alloc]init];
    [littlePuppy bark];
    littlePuppy.name = @"Bo O";
    littlePuppy.breed= @"Portugese Water Dog";
    littlePuppy.image= [UIImage imageNamed:@"Bo.jpg"];
    
    [self.myDogs addObject:littlePuppy];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) printHelloWorld;
{NSLog(@"Hello World");
}

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender {
    int numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs;
    if (self.currentIndex == randomIndex && self.currentIndex == 0){
        randomIndex ++;
    }
    else if (self.currentIndex == randomIndex){
        randomIndex ++;
    }
    
    JMMDOG *randomDog = [self.myDogs objectAtIndex:randomIndex];
    
//    self.myImageView.image = randomDog.image;
//    self.breedLabel.text = randomDog.breed;
//    self.nameLabel.text = randomDog.name;
    
    [UIView transitionWithView:self.view duration:2.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.myImageView.image = randomDog.image;
        self.breedLabel.text = randomDog.breed;
        self.nameLabel.text = randomDog.name;
        
    } completion:^(BOOL finished) {
        
    }];
    sender.title = @"and Another";

    
}

@end
