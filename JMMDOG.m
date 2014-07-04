//
//  JMMDOG.m
//  Man's Best Friend
//
//  Created by h605506 on 6/14/14.
//  Copyright (c) 2014 Josher. All rights reserved.
//

#import "JMMDOG.h"

@implementation JMMDOG

-(void)bark
{
    NSLog(@"Woof Woof!!");
    
}
-(void)barkANumberOfTimes:(int)numberOfTimes;
{
    for (int bark = 1; bark <= numberOfTimes; bark ++)
        [self bark];
}
-(void)changeBreedToWerewolf;
{
    self.breed = @"WereWolf";
}
-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud;
{
    if (!isLoud) {
        for (int bark = 1; bark <= numberOfTimes; bark ++) {
            (NSLog(@"yip yip"));
        
        }
    }
    else {
        for (int bark = 1; bark <= numberOfTimes; bark ++) {
            NSLog(@"Ruff Ruff");
        }
    }
}
-(int)ageInDogYearsFromAge:(int)regularAge;
{
    int newAge = regularAge * 7;
    return newAge;
    
}


@end
