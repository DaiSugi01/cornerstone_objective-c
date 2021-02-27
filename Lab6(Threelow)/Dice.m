//
//  Dice.m
//  Lab6(Threelow)
//
//  Created by 杉原大貴 on 2021/02/26.
//

#import "Dice.h"

@implementation Dice

-(void) genereteRandomValue {
    NSInteger randomNum = arc4random_uniform(6) + 1;
    
    NSString *dice1 = @"\u2680";
    NSString *dice2 = @"\u2681";
    NSString *dice3 = @"\u2682";
    NSString *dice4 = @"\u2683";
    NSString *dice5 = @"\u2684";
    NSString *dice6 = @"\u2685";

    switch (randomNum) {
        case 1:
            self.daiceValue = dice1;
            break;
        case 2:
            self.daiceValue = dice2;
            break;
        case 3:
            self.daiceValue = dice3;
            break;
        case 4:
            self.daiceValue = dice4;
            break;
        case 5:
            self.daiceValue = dice5;
            break;
        case 6:
            self.daiceValue = dice6;
            break;
        default:
            break;
    }
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self genereteRandomValue];
    }
    return self;
}

@end
