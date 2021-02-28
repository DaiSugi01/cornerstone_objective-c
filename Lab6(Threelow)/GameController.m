//
//  GameController.m
//  Lab6(Threelow)
//
//  Created by 杉原大貴 on 2021/02/27.
//

#import "GameController.h"

@interface GameController() {
    NSInteger _initialRolls;
}
@end

@implementation GameController {
    NSArray<Dice *> *_dices;
    NSMutableDictionary<NSString *, NSString *> *_heldDices;
    NSInteger _remainingRools;
    NSInteger _score;
    NSInteger _bestScore;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _initialRolls = 5;
        _remainingRools = _initialRolls;
        _score = 0;
        _bestScore = NSIntegerMax;
        _dices = [NSArray arrayWithObjects:[Dice new], [Dice new], [Dice new], [Dice new], [Dice new], nil];
        _heldDices = [NSMutableDictionary dictionaryWithDictionary:@{
            @"1": @"0",
            @"2": @"0",
            @"3": @"0",
            @"4": @"0",
            @"5": @"0"
        }];
    }
    return self;
}

-(void)holdDice:(NSString *) targetIndex {
    
    if (self.remainingRools == _initialRolls) {
        NSLog(@"Roll the dice at least one time");
        return;
    }
    
    NSInteger idx = [targetIndex intValue];
    if (idx < 1 || idx > 5) {
        NSLog(@"Please type number between 1 and 5");
        return;
    }
    
    NSString *toggledHeldStatus = [self.heldDices[targetIndex] intValue] ? @"0" : @"1";
    self.heldDices[targetIndex] = toggledHeldStatus;
    
    if ([toggledHeldStatus intValue]) {
        self.score += [self.dices[idx-1] diceValue];
    } else {
        self.score -= [self.dices[idx-1] diceValue];
    }    
}

-(void)holdAllDice {
    for (NSString *key in [self.heldDices allKeys]) {
        NSInteger diceIdx = [key intValue];
        BOOL isHeld = [self.heldDices[key] intValue];
        if (!isHeld) {
            self.heldDices[key] = @"1";
            self.score += [self.dices[diceIdx-1] diceValue];
        }
    }
}

-(void)displayCurrentStatus {

    if (self.remainingRools == _initialRolls) {
        NSLog(@"Roll the dice at least one time");
        return;
    }

    NSMutableString *printContent = [NSMutableString string];
    [printContent setString:@""];
    [printContent appendFormat:@"\nRemaining Rolls: %ld\n", (long)self.remainingRools];
    [printContent appendString:@"--------------------------\n"];
    [printContent appendString:@"--     Current Dice     --\n"];
    for (int i = 0; i < [self.dices count]; i++) {
        BOOL isHeld = [self.heldDices[[NSString stringWithFormat:@"%d", i + 1]] intValue];
        if (isHeld) {
            [printContent appendFormat:@"    [%@]", [self.dices[i] diceEmoji]];
        } else {
            [self.dices[i] genereteRandomValue];
            [printContent appendFormat:@"    %@", [self.dices[i] diceEmoji]];
        }
    }

    [printContent appendString:@"\n\n--     Total Score      --\n"];
    [printContent appendFormat:@"Score: %ld\n", (long)self.score];
    [printContent appendString:@"--------------------------"];

    NSLog(@"%@", printContent);
}

-(void)generateDices {
    for (int i = 0; i < [self.dices count]; i++) {
        Dice *dice = self.dices[i];
        NSString *dicekey = [NSString stringWithFormat:@"%d", i + 1];
        
        if ([self.heldDices[dicekey] isEqualTo:@"0"]) {
            [dice genereteRandomValue];
        }
    }
}

-(void)resetDice {
    for (NSString *key in [self.heldDices allKeys]) {
        self.heldDices[key] = @"0";
    }
    self.score = 0;
}

-(void) resetGame {
    self.remainingRools = 5;
    self.score = 0;
    for (NSString *key in [self.heldDices allKeys]) {
        self.heldDices[key] = @"0";
    }
}

- (BOOL)checkGameStatus {
    if (self.remainingRools > 0) {
        return YES;
    }
    
    [self holdAllDice];
    [self displayCurrentStatus];
    if (self.score < self.bestScore) {
        [self setBestScore:self.score];
        NSLog(@"Score to beat");
        NSLog(@"New best score is %ld", (long)self.bestScore);
    } else {
        NSLog(@"Current best score is %ld", (long)self.bestScore);
    }
    NSLog(@"Game Over!");
    return NO;
}


- (void)secretCoomanRun {
    self.score = 0;
    self.remainingRools = 0;
    for (Dice *dice in self.dices) {
        [dice makeAllDiceThree];
    }
}

@end
