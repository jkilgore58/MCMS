//
//  ViewController.m
//  MCMS
//
//  Created by Jonathan Kilgore on 1/19/16.
//  Copyright © 2016 Jonathan Kilgore. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITextField *addNameTextField;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *addWeaponTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property NSMutableArray *creatures;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    MagicalCreature *creatureOne = [[MagicalCreature alloc]initWithName:@"Cartman" andDetails:@"Sarcastic Wit" andAccessory:@"Guns and Beer" andCreatureImage:nil];
    MagicalCreature *creatureTwo = [[MagicalCreature alloc]initWithName:@"Kyle" andDetails:@"Drunk Dad" andAccessory:@"Hight IQ" andCreatureImage:nil];
    MagicalCreature *creatureThree = [[MagicalCreature alloc]initWithName:@"Stan" andDetails:@"Hates Cartman" andAccessory:@"Cool hat" andCreatureImage:nil];

    self.creatures = [NSMutableArray arrayWithObjects:creatureOne, creatureTwo, creatureThree, nil];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];
    MagicalCreature *creature = [self.creatures objectAtIndex:indexPath.row];
    cell.textLabel.text = creature.name;
    cell.detailTextLabel.text = creature.details;
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.creatures.count;
}

- (IBAction)onBattleButtonPressed:(UIBarButtonItem *)sender {
}
- (IBAction)onAddButtonPressed:(UIButton *)sender {

    NSString *addToList = self.addNameTextField.text;
    [self.creatures addObject:addToList];
    self.addNameTextField.text = nil;
    [self.tableView reloadData];
}

@end
