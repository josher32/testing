//
//  JMMDOG.h
//  Man's Best Friend
//
//  Created by h605506 on 6/14/14.
//  Copyright (c) 2014 Josher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JMMDOG : NSObject

@property (nonatomic) int age;
@property (nonatomic,strong) NSString *breed;
@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSString *name;

-(void)bark;
-(void)barkANumberOfTimes:(int)numberOfTimes;
-(void)changeBreedToWerewolf;
-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud;
-(int)ageInDogYearsFromAge:(int)regularAge;



@end
