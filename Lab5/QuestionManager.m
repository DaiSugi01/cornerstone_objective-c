//
//  QuestionManager.m
//  Lab5
//
//  Created by 杉原大貴 on 2021/02/25.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager {
    NSMutableArray<Question *> *_questions;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray array];
    }
    return self;
}

- (NSString *)timeOutput
{
    
    float totalTime;
    for (Question *q in self.questions) {
        totalTime += [q timeToAnswer];
    }
    float averageTime = totalTime / [self.questions count];
    NSString *outputString = [NSString stringWithFormat:@"total time: %.1fs, average time: %.1fs", totalTime, averageTime];
    return outputString;
}

@end
