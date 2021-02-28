//
//  main.m
//  Lab6(Threelow)
//
//  Created by 杉原大貴 on 2021/02/26.
//

#import <Foundation/Foundation.h>
#import "GameController.h"
#import "InputHandler.h"
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputHandler *ih = [InputHandler new];
        GameController *gc = [GameController new];

        BOOL isGameOn = YES;
        while (YES) {
            
            NSString *userInput = [ih getUserInput:@"\n'roll' to roll the dice\n'hold' to hold the dice\n'reset' to un-hold all dice\n'done' to end the game\n'display' to show current status\n'new game' to play new game"];
            
            // When game is already over
            if (!isGameOn && ![userInput isEqualTo:@"new game"] && ![userInput isEqualTo:@"done"] && ![userInput isEqualTo:@"display"]) {
                NSLog(@"To play, please type 'new game', otherwise type 'done'");
                continue;
            }
            
            // When secret command is executed
            if ([userInput isEqualTo:@"roIl?"] || [userInput isEqualTo:@"rolll"]) {
                [gc secretCoomanRun];
                isGameOn = [gc checkGameStatus];
                continue;
            }

            if ([userInput isEqualTo:@"roll"]) {
                [gc setRemainingRools:[gc remainingRools] - 1];
                [gc generateDices];
                [gc displayCurrentStatus];

            } else if ([userInput isEqualTo:@"hold"]) {
                NSString *diceIndex = [ih getUserInput:@"\n'Enter the number of the dice\n"];
                [gc holdDice:diceIndex];

            } else if ([userInput isEqualTo:@"reset"]) {
                [gc resetDice];

            } else if ([userInput isEqualTo:@"done"]) {
                NSLog(@"%@", @"Good Bye!");
                break;

            } else if ([userInput isEqualTo:@"display"]) {
                [gc displayCurrentStatus];
            } else if ([userInput isEqualTo:@"new game"]) {
                [gc resetGame];
                isGameOn = YES;
            }
            
            // check whether there is remining roll or not
            isGameOn = [gc checkGameStatus];
        }
        
    }
    return 0;
}
