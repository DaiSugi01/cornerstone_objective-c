//
//  InputCollector.m
//  Lab4
//
//  Created by 杉原大貴 on 2021/02/25.
//

#import "InputCollector.h"

@implementation InputCollector {
    NSMutableArray<NSString *> *_userHistoryLog;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _userHistoryLog = [NSMutableArray array];
    }
    return self;
}

- (NSString *) inputForPrompt:(NSString *) promptString {

    NSLog(@"%@", promptString);
    char inputString[255];
    char *result = fgets(inputString, 255, stdin);
    
    if (result == NULL) {
        return NULL;
    }
    
    NSString *userInput = [[NSString stringWithCString:result encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return userInput;
}

- (void) addUserHistory:(NSString *) histroy {
    NSInteger listCount = [self.userHistoryLog count];
    
    if (listCount == 3) {
        [self.userHistoryLog removeObjectAtIndex:0];
    }
    
    [self.userHistoryLog addObject:histroy];
    
    NSLog(@"%@", self.userHistoryLog);
}

@end
