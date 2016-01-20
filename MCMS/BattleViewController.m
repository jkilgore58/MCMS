//
//  BattleViewController.m
//  MCMS
//
//  Created by Matt Deuschle on 1/19/16.
//  Copyright © 2016 Jonathan Kilgore. All rights reserved.
//

#import "BattleViewController.h"

@interface BattleViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *fighterOneImage;
@property (strong, nonatomic) IBOutlet UIImageView *fighterTwoImage;
@property (strong, nonatomic) IBOutlet UILabel *fighterOneLabel;
@property (strong, nonatomic) IBOutlet UILabel *fighterTwoLabel;
@property (strong, nonatomic) IBOutlet UIImageView *explosionOne;
@property (strong, nonatomic) IBOutlet UIImageView *explosionTwo;

@end

@implementation BattleViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.explosionOne.image = [UIImage imageNamed:@"explosion"];
    self.explosionTwo.image = [UIImage imageNamed:@"explosion"];

    [self.explosionOne setAlpha:0];
    [self.explosionTwo setAlpha:0];

    self.fighter1 = self.creatures[[self chooseFighter]];
    self.fighterOneImage.image = self.fighter1.images;
    self.fighterOneLabel.text = self.fighter1.name;

    self.fighter2 = self.creatures[[self chooseFighter]];
    self.fighterTwoImage.image = self.fighter2.images;
    self.fighterTwoLabel.text = self.fighter2.name;
}

// Choose an opponent at random
//return NSInteger index into the array of creatures

-(NSInteger)chooseFighter
{
    NSInteger randomNumber = arc4random()% [self.creatures count];

    while ([[self.creatures[randomNumber]name] isEqualToString:self.fighterOneLabel.text])
    {
        randomNumber = arc4random()%[self.creatures count];
    }
    return randomNumber;
}

-(NSInteger)chooseWinner
{
    NSInteger randomNumber = arc4random()%2;
    return randomNumber;
}

- (IBAction)onFightButtonPressed:(UIButton *)sender {

    NSInteger winner = [self chooseWinner];

    if (winner == 1) {

        [self explosionOneMethod];
    }
    else
    {
        [self explosionTwoMethod];
    }
}

-(void)explosionOneMethod
{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.2];
    [self.explosionOne setAlpha:1];
    [UIView setAnimationDuration:1.0];
    [self.explosionOne setAlpha:0];
    [self.fighterOneImage setAlpha:0];
    [self.fighterOneLabel setAlpha:0];
    [UIView commitAnimations];
}

-(void)explosionTwoMethod
{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.2];
    [self.explosionTwo setAlpha:1];
    [UIView setAnimationDuration:1.0];
    [self.explosionTwo setAlpha:0];
    [self.fighterTwoImage setAlpha:0];
    [self.fighterTwoLabel setAlpha:0];
    [UIView commitAnimations];
}



@end
