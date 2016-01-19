//
//  ViewController.m
//  MCMS
//
//  Created by Jonathan Kilgore on 1/19/16.
//  Copyright © 2016 Jonathan Kilgore. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITextField *addNameTextField;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *addWeaponTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property NSMutableArray *creatures;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    return nil;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}


- (IBAction)onBattleButtonPressed:(UIBarButtonItem *)sender {
}
- (IBAction)onAddButtonPressed:(UIButton *)sender {
}

@end
