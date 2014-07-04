//
//  JMMPuppy.m
//  Man's Best Friend
//
//  Created by h605506 on 6/17/14.
//  Copyright (c) 2014 Josher. All rights reserved.
//

#import "JMMPuppy.h"

@implementation JMMPuppy

-(void)givePuppyEyes
{
    NSLog(@" :( ");
}
-(void)bark
{
    [super bark];
    NSLog(@"whimper whimper");
    [self givePuppyEyes];
}
@end
