//
//  main.m
//  Lab6(Threelow)
//
//  Created by 杉原大貴 on 2021/02/26.
//

#define CASE(str)                       if ([__s__ isEqualToString:(str)])
#define SWITCH(s)                       for (NSString *__s__ = (s); ; )
#define DEFAULT

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputHandler *ih = [InputHandler new];
                
        Dice *dice1 = [[Dice alloc] init];
        Dice *dice2 = [[Dice alloc] init];
        Dice *dice3 = [[Dice alloc] init];
        Dice *dice4 = [[Dice alloc] init];
        Dice *dice5 = [[Dice alloc] init];
        NSMutableString *printContent = [NSMutableString string];
        
        BOOL isGameOn = YES;

        while (isGameOn) {
            
            NSString *userInput = [ih getUserInput:@"\n'roll' to roll the dice\n'hold' to hold the dice\n'reset' to un-hold all dice\n'done' to end the game\n'display' to show current status\n"];

            if ([userInput isEqualTo:@"roll"]) {
                [printContent appendString:@"\n--------------------------\n"];
                [printContent appendString:@"--     Current Dice     --\n"];
                [printContent appendFormat:@"  %@    %@    %@    %@    %@\n", [dice1 daiceValue], [dice2 daiceValue], [dice3 daiceValue], [dice4 daiceValue], [dice5 daiceValue]];
                [printContent appendString:@"--------------------------\n"];
                
                NSLog(@"%@", printContent);
                continue;
            }

            if ([userInput isEqualTo:@"hold"]) {
                NSLog(@"%@", @"hold");
                continue;
            }

            if ([userInput isEqualTo:@"reset"]) {
                NSLog(@"%@", @"reset");
                continue;
            }

            if ([userInput isEqualTo:@"done"]) {
                NSLog(@"%@", @"Good Bye!");
                break;
            }

            if ([userInput isEqualTo:@"display"]) {
                NSLog(@"%@", @"display");
                continue;
            }
        }
        
    }
    return 0;
}
