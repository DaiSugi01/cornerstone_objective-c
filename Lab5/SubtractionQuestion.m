//
//  SubtractionQuestion.m
//  Lab5
//
//  Created by 杉原大貴 on 2021/02/25.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    NSString *question = [NSString stringWithFormat:@"%d - %d ?", self.leftValue, self.rightValue];
    [super setQuestion: question];

    NSInteger answer = self.leftValue - self.rightValue;
    [super setAnswer:answer];
}

@end
