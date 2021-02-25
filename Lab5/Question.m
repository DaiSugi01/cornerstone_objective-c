//
//  AdditionQuestion.m
//  Lab5
//
//  Created by 杉原大貴 on 2021/02/24.
//

#import "Question.h"

@implementation Question {
}

- (instancetype) init
{
    self = [super init];
    if (self) {
        self.leftValue = arc4random_uniform(90) + 10;
        self.rightValue = arc4random_uniform(90) + 10;
                
        self.startTime = [NSDate date];
    }
    return self;
}

- (NSInteger) answer
{
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval) timeToAnswer
{
    return [self.endTime timeIntervalSinceDate:self.startTime];
}

- (void) generateQuestion {}

@end
