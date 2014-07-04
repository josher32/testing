//
//  JMMViewController.h
//  Man's Best Friend
//
//  Created by h605506 on 6/14/14.
//  Copyright (c) 2014 Josher. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JMMViewController : UIViewController

-(void) printHelloWorld;
- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender;


@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;
@property (strong,nonatomic) NSMutableArray *myDogs;
@property (nonatomic) int currentIndex;


@end
