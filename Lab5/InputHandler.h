//
//  InputHandler.h
//  Lab5
//
//  Created by 杉原大貴 on 2021/02/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputHandler : NSObject

- (instancetype)init;
+ (NSString *) getUserINput: (NSString *) prompt;

@end

NS_ASSUME_NONNULL_END
