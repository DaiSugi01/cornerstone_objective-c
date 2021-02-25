//
//  QuestionFactory.h
//  Lab5
//
//  Created by 杉原大貴 on 2021/02/25.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : NSObject

- (Question *) generateRandomQuestion;

@end

NS_ASSUME_NONNULL_END
