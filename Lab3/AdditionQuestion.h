//
//  AdditionQuestion.h
//  Lab3
//
//  Created by 杉原大貴 on 2021/02/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject

@property NSString *question;
@property (assign) NSInteger answer;

- (instancetype)init;

@end

NS_ASSUME_NONNULL_END
