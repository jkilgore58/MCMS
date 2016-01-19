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

-(instancetype)initWithName:(NSString *)name andDetails:(NSString *)details andAccessory:(NSString *)accessories andCreatureImage:(UIImage *)images;

@property NSString *name;
@property NSString *details;
@property NSString *accessories;
@property UIImage *images;

@end
