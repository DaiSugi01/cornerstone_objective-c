//
//  main.m
//  Lab5
//
//  Created by 杉原大貴 on 2021/02/24.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL isGameOn = YES;
        NSLog(@"MATHS!\n\n\n");
        NSString *right = @"Right!";
        NSString *wrong = @"Wrong!";
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        QuestionManager *qm = [[QuestionManager alloc] init];
        QuestionFactory *qf = [[QuestionFactory alloc] init];
        
        while (isGameOn) {
            Question *question = [qf generateRandomQuestion];
            [qm.questions addObject:question];
            NSInteger userAnswer = [[InputHandler getUserINput:question.question] intValue];

            // display result of qustion
            if (userAnswer == question.answer) {
                NSLog(@"%@", right);
                scoreKeeper.rightCount++;
            } else {
                NSLog(@"%@", wrong);
                scoreKeeper.wrongCount++;
            }
            // display score
            NSLog(@"score: %ld right, %ld wrong ---- %@%%", scoreKeeper.rightCount, scoreKeeper.wrongCount, [scoreKeeper getScoreRatio]);
            
            NSLog(@"%@", [qm timeOutput]);
            
            isGameOn = [[InputHandler getUserINput:@"To quit a game, input 'quit' and press enter. Otherwise, press enter"] isNotEqualTo :@"quit"];
        }
        NSLog(@"Good Bye!");
    }
    return 0;
}
