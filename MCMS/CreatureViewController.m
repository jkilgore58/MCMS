//
//  CreatureViewController.m
//  MCMS
//
//  Created by Matt Deuschle on 1/19/16.
//  Copyright © 2016 Jonathan Kilgore. All rights reserved.
//

#import "CreatureViewController.h"
#import "MagicalCreature.h"

@interface CreatureViewController ()

@property (strong, nonatomic) IBOutlet UITextField *editCreatureNameTextField;
@property (strong, nonatomic) IBOutlet UILabel *editCreatureNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UIImageView *creatureImageView;

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.editCreatureNameTextField.hidden = YES;

    self.editCreatureNameLabel.text = self.creature.name;

    [self.descriptionLabel sizeToFit];

    self.descriptionLabel.text = self.creature.details;
    
    self.creatureImageView.image = self.creature.images;

}

- (IBAction)onEditButtonPressed:(UIButton *)editButton {

    if ([editButton.titleLabel.text isEqualToString:@"Edit"]) {
        [editButton setTitle:@"Done" forState:UIControlStateNormal];
        self.editCreatureNameTextField.hidden = NO;
    }
    else
    {
        [editButton setTitle:@"Edit" forState:UIControlStateNormal];
        self.editCreatureNameTextField.hidden = YES;
    }
}
@end
