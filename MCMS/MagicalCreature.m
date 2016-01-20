//
//  MagicalCreature.m
//  MCMS
//
//  Created by Jonathan Kilgore on 1/19/16.
//  Copyright © 2016 Jonathan Kilgore. All rights reserved.
//

#import "MagicalCreature.h"
#import <UIKit/UIKit.h>

@implementation MagicalCreature

-(instancetype)initWithName:(NSString *)name andDetails:(NSString *)details andAccessory:(NSMutableArray *)accessories andCreatureImage:(UIImage *)images; {
    
    self = [super init];
    
    if (self){
        self.name = name;
        self.details = details;
        self.accessories = accessories;
        self.images = images;
    }
    return self;
}

@end
