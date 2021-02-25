//
//  QuestionManager.h
//  Lab5
//
//  Created by 杉原大貴 on 2021/02/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject

@property NSMutableArray *questions;

- (instancetype)init;
- (NSString *)timeOutput;

@end

NS_ASSUME_NONNULL_END
