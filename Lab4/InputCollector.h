//
//  InputCollector.h
//  Lab4
//
//  Created by 杉原大貴 on 2021/02/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputCollector : NSObject

@property (nonatomic) NSMutableArray<NSString *> *userHistoryLog;


- (NSString *) inputForPrompt:(NSString *) promptString;
- (void) addUserHistory:(NSString *) histroy;

@end

NS_ASSUME_NONNULL_END
