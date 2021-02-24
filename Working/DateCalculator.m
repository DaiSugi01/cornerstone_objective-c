//
//  DateCalculator.m
//  Working
//
//  Created by 杉原大貴 on 2021/02/23.
//

#import "DateCalculator.h"

@implementation DateCalculator {
    NSString * _name;
    float _age;
}

- (instancetype)initWithName: (NSString *) name AndAge: (float) age
{
    self = [super init];
    if (self) {
        _age = age;
        _name = name;
    }
    return self;
}

- (BOOL) canDateAPersonWithAge: (float) age {
    return (_age / 2 + 7) < age;
}

@end
