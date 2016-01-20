//
//  MagicalCreature.h
//  MCMS
//
//  Created by Jonathan Kilgore on 1/19/16.
//  Copyright © 2016 Jonathan Kilgore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MagicalCreature : NSObject

@property NSString *name;
@property NSString *details;
@property UIImage *images;
@property NSMutableArray *accessories;

//Custom initializer
-(instancetype)initWithName:(NSString *)name andDetails:(NSString *)details andAccessory:(NSMutableArray *)accessories andCreatureImage:(UIImage *)images;

@end
