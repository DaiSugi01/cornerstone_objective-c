//
//  AdditionQuestion.h
//  Lab5
//
//  Created by 杉原大貴 on 2021/02/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

@property (nonatomic, copy) NSString *question;
@property (nonatomic, assign) NSInteger answer;
@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *endTime;
@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;

- (NSTimeInterval) timeToAnswer;
- (void) generateQuestion;

@end

NS_ASSUME_NONNULL_END
