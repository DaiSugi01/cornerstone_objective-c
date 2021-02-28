//
//  Dice.h
//  Lab6(Threelow)
//
//  Created by 杉原大貴 on 2021/02/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject

@property NSInteger diceValue;
@property NSString *diceEmoji;

-(void) genereteRandomValue;
-(void) makeAllDiceThree;

@end

NS_ASSUME_NONNULL_END
