//
//  main.m
//  Lab6(Threelow)
//
//  Created by 杉原大貴 on 2021/02/26.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dice *dice1 = [[Dice alloc] init];
        Dice *dice2 = [[Dice alloc] init];
        Dice *dice3 = [[Dice alloc] init];
        Dice *dice4 = [[Dice alloc] init];
        Dice *dice5 = [[Dice alloc] init];
        
        [dice1 genereteRandomValue];
        [dice2 genereteRandomValue];
        [dice3 genereteRandomValue];
        [dice4 genereteRandomValue];
        [dice5 genereteRandomValue];

        NSLog(@"%d", [dice1 currentValue]);
        NSLog(@"%d", [dice2 currentValue]);
        NSLog(@"%d", [dice3 currentValue]);
        NSLog(@"%d", [dice4 currentValue]);
        NSLog(@"%d", [dice5 currentValue]);
    }
    return 0;
}
