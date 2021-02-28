//
//  GameController.h
//  Lab6(Threelow)
//
//  Created by 杉原大貴 on 2021/02/27.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject

@property (nonatomic) NSArray<Dice *> *dices;
@property (nonatomic) NSMutableDictionary<NSString *, NSString *> *heldDices;
@property (assign, nonatomic) NSInteger remainingRools;
@property (assign, nonatomic) NSInteger score;
@property (assign, nonatomic) NSInteger bestScore;

-(void) holdDice:(NSString *) targetIndex;
-(void) displayCurrentStatus;
-(void) generateDices;
-(void) resetDice;
-(void) holdAllDice;
-(void) resetGame;
-(BOOL) checkGameStatus;
-(void) secretCoomanRun;

@end

NS_ASSUME_NONNULL_END
