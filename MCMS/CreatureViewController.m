//
//  CreatureViewController.m
//  MCMS
//
//  Created by Matt Deuschle on 1/19/16.
//  Copyright © 2016 Jonathan Kilgore. All rights reserved.
//

#import "CreatureViewController.h"
#import "MagicalCreature.h"
#import "ViewController.h"

@interface CreatureViewController () <UITableViewDelegate, UITextFieldDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITextField *editCreatureNameTextField;
@property (strong, nonatomic) IBOutlet UILabel *editCreatureNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UIImageView *creatureImageView;
@property (weak, nonatomic) IBOutlet UITableView *creatureTableView;
@property NSMutableArray *accessoryArray;


@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.editCreatureNameTextField.hidden = YES;

    self.editCreatureNameLabel.text = self.creature.name;

    [self.descriptionLabel sizeToFit];

    self.descriptionLabel.text = self.creature.details;
    
    self.creatureImageView.image = self.creature.images;
    self.accessoryArray = self.creature.accessories;

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.accessoryArray.count;
    
}

//-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID2"];
//    cell.textLabel.text = [self.accessoryArray objectAtIndex:indexPath.row];
//}

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
