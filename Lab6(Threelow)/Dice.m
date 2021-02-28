//
//  Dice.m
//  Lab6(Threelow)
//
//  Created by 杉原大貴 on 2021/02/26.
//

#import "Dice.h"

@interface Dice() {
    NSString *_dice1Emoji;
    NSString *_dice2Emoji;
    NSString *_dice3Emoji;
    NSString *_dice4Emoji;
    NSString *_dice5Emoji;
    NSString *_dice6Emoji;
}

@end

@implementation Dice {
    NSInteger _diceValue;
    NSString *_diceEmoji;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _diceValue = 0;
        _diceEmoji = @"\u2682";
        
        _dice1Emoji = @"\u2680";
        _dice2Emoji = @"\u2681";
        _dice3Emoji = @"\u2682";
        _dice4Emoji = @"\u2683";
        _dice5Emoji = @"\u2684";
        _dice6Emoji = @"\u2685";
    }
    return self;
}

-(void) genereteRandomValue {
    self.diceValue = arc4random_uniform(6) + 1;


    
    switch (self.diceValue) {
        case 1:
            self.diceEmoji = _dice1Emoji;
            break;
        case 2:
            self.diceEmoji = _dice2Emoji;
            break;
        case 3:
            self.diceEmoji = _dice3Emoji;
            self.diceValue = 0;
            break;
        case 4:
            self.diceEmoji = _dice4Emoji;
            break;
        case 5:
            self.diceEmoji = _dice5Emoji;
            break;
        case 6:
            self.diceEmoji = _dice6Emoji;
            break;
        default:
            break;
    }
}

-(void) makeAllDiceThree {
    [self setDiceValue:0];
    [self setDiceEmoji:_dice3Emoji];
}

@end
