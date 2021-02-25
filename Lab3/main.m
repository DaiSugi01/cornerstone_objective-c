//
//  main.m
//  Lab3
//
//  Created by 杉原大貴 on 2021/02/24.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL isGameOn = YES;
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        
        while (isGameOn) {
            AdditionQuestion *additionQuestion = [[AdditionQuestion alloc] init];
            NSInteger userAnswer = [[InputHandler getUserINput:additionQuestion.question] intValue];

            // display result of qustion
            if (userAnswer == additionQuestion.answer) {
                NSLog(@"Right!");
                scoreKeeper.rightCount++;
            } else {
                NSLog(@"Wrong!");
                scoreKeeper.wrongCount++;
            }
            // display score
            NSLog(@"score: %ld right, %ld wrong ---- %@%%", scoreKeeper.rightCount, scoreKeeper.wrongCount, [scoreKeeper getScoreRatio]);
            
            isGameOn = [[InputHandler getUserINput:@"To quit a game, input 'quit' and press enter. Otherwise, press enter"] isNotEqualTo :@"quit"];
        }
        NSLog(@"Good Bye!");
    }
    return 0;
}
