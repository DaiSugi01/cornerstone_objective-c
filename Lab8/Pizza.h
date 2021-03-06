//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by 杉原大貴 on 2021/03/01.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Pizza : NSObject

enum PizzaSize {small, midium, large};

@property (nonatomic) enum PizzaSize size;
@property (nonatomic) NSArray<NSString *> *toppings;

- (instancetype)initWithSize:(enum PizzaSize) size AndToppings: (NSArray *)initialToppings;
- (NSString *)getSize;

@end

NS_ASSUME_NONNULL_END
