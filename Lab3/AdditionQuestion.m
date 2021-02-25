//
//  AdditionQuestion.m
//  Lab3
//
//  Created by 杉原大貴 on 2021/02/24.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion {
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSInteger firstNumber = arc4random_uniform(90) + 10;
        NSInteger secondNumber = arc4random_uniform(90) + 10;
        
        _question = [NSString stringWithFormat:@"%ld + %ld ?", firstNumber, secondNumber];
        _answer = firstNumber + secondNumber;
    }
    return self;
}

@end
