//
//  Dice.m
//  Lab6(Threelow)
//
//  Created by 杉原大貴 on 2021/02/26.
//

#import "Dice.h"

@implementation Dice

-(void) genereteRandomValue {
    self.currentValue = arc4random_uniform(6) + 1;
}

@end
