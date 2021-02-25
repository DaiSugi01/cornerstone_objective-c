//
//  ScoreKeeper.m
//  Lab5
//
//  Created by 杉原大貴 on 2021/02/24.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper {
    NSInteger _rightCount;
    NSInteger _wrongCount;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        _rightCount = 0;
        _wrongCount = 0;
    }
    return self;
}

- (NSString *) getScoreRatio {
    if (self.rightCount == 0 || self.wrongCount == 0) {
        return self.rightCount == 0 ? @"0" : @"100";
    }
    NSUInteger total = self.rightCount + self.wrongCount;
    float floatResult = (float) self.rightCount / total;
    NSUInteger result = floatResult * 100;
    
    return [NSString stringWithFormat:@"%.0ld", result];
}

@end
