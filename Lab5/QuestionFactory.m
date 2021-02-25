//
//  QuestionFactory.m
//  Lab5
//
//  Created by 杉原大貴 on 2021/02/25.
//

#import "QuestionFactory.h"

@implementation QuestionFactory {
    NSArray *_questionSubClassNames;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionSubClassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}

- (Question *) generateRandomQuestion
{
    NSInteger randomIndex = arc4random_uniform([_questionSubClassNames count]);
    NSString *pickupClassName = _questionSubClassNames[randomIndex];
    return [[NSClassFromString(pickupClassName) alloc] init];
}

@end
