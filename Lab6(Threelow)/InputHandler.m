//
//  InputHandler.m
//  Lab6(Threelow)
//
//  Created by 杉原大貴 on 2021/02/27.
//

#import "InputHandler.h"

@implementation InputHandler

- (NSString *) getUserInput: (NSString *) promptString {
    
    NSLog(@"%@", promptString);
    
    char inputString[255];
    char *result = fgets(inputString, 255, stdin);
    
    if (result == NULL) {
        return NULL;
    }
    
    NSString *userAction = [[NSString stringWithCString:result encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return userAction;
}

@end
