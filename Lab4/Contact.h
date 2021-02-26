//
//  Contact.h
//  Lab4
//
//  Created by 杉原大貴 on 2021/02/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *email;
@property (nonatomic) NSMutableDictionary *phoneNumberDic;

@end

NS_ASSUME_NONNULL_END
