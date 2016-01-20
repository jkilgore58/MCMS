//
//  ViewController.m
//  MCMS
//
//  Created by Jonathan Kilgore on 1/19/16.
//  Copyright © 2016 Jonathan Kilgore. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"
#import "CreatureViewController.h"
#include "BattleViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITextField *addNameTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    MagicalCreature *creatureOne = [[MagicalCreature alloc]
                                    initWithName:@"Cartman"
                                    andDetails:@"Sarcastic Wit"
                                    andAccessory:[NSMutableArray arrayWithObjects:@"Hats", @"Ugly Wife", @"Cars", @"Big Nose", nil]
                                    andCreatureImage:[UIImage imageNamed:@"creature1"]];

    MagicalCreature *creatureTwo = [[MagicalCreature alloc]
                                    initWithName:@"Kyle"
                                    andDetails:@"Drunk Dad"
                                    andAccessory:[NSMutableArray arrayWithObjects:@"Big Ears", @"Bad Temper", @"Fancy Belt", @"Smelly Feet", nil]
                                    andCreatureImage:[UIImage imageNamed:@"creature2"]];

    MagicalCreature *creatureThree = [[MagicalCreature alloc]
                                    initWithName:@"Stan"
                                    andDetails:@"Hates Cartman"
                                    andAccessory:[NSMutableArray arrayWithObjects:@"Cats", @"Dogs", @"Birds", @"Cows", @"Chickens", @"Frogs",nil]
                                    andCreatureImage:[UIImage imageNamed:@"creature3"]];

    self.creatures = [NSMutableArray arrayWithObjects:creatureOne, creatureTwo, creatureThree, nil];
}

-(void)viewWillAppear:(BOOL)animated
{
    [self.tableView reloadData];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];
    MagicalCreature *creature = [self.creatures objectAtIndex:indexPath.row];
    
    cell.textLabel.text = creature.name;
    cell.detailTextLabel.text = creature.details;
    cell.imageView.image = creature.images;
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.creatures.count;
}

- (IBAction)onBattleButtonPressed:(UIBarButtonItem *)sender {
}

- (IBAction)onAddButtonPressed:(UIButton *)sender {

    UIImage *randomImages = [UIImage imageNamed:[NSString stringWithFormat:@"creature%u.png", 1+arc4random_uniform(10)]];
    
    MagicalCreature *newCreature = [[MagicalCreature alloc]
                                    initWithName:self.addNameTextField.text
                                    andDetails:self.descriptionTextField.text
                                    andAccessory:nil
                                    andCreatureImage:randomImages];

    [self.creatures addObject:newCreature];
    self.addNameTextField.text = nil;
    self.descriptionTextField.text = nil;
    [self.tableView reloadData];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"BattleSegue"]) {
        BattleViewController *dvc = segue.destinationViewController;
        dvc.creature = self.creature;
        dvc.creatures = self.creatures;
    }
    else
    {
        CreatureViewController *dvc = segue.destinationViewController;
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        dvc.title = [[self.creatures objectAtIndex:indexPath.row]name];
        MagicalCreature *creature = [self.creatures objectAtIndex:indexPath.row];
        dvc.creature = creature;
    }
}

-(IBAction)unwind:(UIStoryboardSegue *)sender
{
    
}









@end
