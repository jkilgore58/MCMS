//
//  BattleViewController.h
//  MCMS
//
//  Created by Matt Deuschle on 1/19/16.
//  Copyright © 2016 Jonathan Kilgore. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MagicalCreature.h"

@interface BattleViewController : UIViewController

@property NSMutableArray *creatures;
@property MagicalCreature *creature;
@property MagicalCreature *fighter1;
@property MagicalCreature *fighter2;

@end
