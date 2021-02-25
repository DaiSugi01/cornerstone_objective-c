//
//  ScoreKeeper.h
//  Lab5
//
//  Created by 杉原大貴 on 2021/02/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject

@property (assign) NSInteger rightCount;
@property (assign) NSInteger wrongCount;

- (instancetype)init;
- (NSString *) getScoreRatio;

@end

NS_ASSUME_NONNULL_END
