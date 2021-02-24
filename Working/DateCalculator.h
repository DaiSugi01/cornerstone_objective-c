//
//  DateCalculator.h
//  Working
//
//  Created by 杉原大貴 on 2021/02/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DateCalculator : NSObject
- (instancetype)initWithName: (NSString *) name AndAge: (float) age;
- (BOOL) canDateAPersonWithAge: (float) age;
@end

NS_ASSUME_NONNULL_END
