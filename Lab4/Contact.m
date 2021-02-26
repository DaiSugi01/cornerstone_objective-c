//
//  Contact.m
//  Lab4
//
//  Created by 杉原大貴 on 2021/02/25.
//

#import "Contact.h"

@implementation Contact {
    NSMutableDictionary *_phoneNumberDic;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _phoneNumberDic = [NSMutableDictionary new];
    }
    return self;
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"Contact=[name:%@, email: %@]", self.name, self.email];
}
@end
