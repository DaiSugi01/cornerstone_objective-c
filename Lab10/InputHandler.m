//
//  InputHandler.m
//  Lab10(Payments)
//
//  Created by 杉原大貴 on 2021/03/02.
//

#import "InputHandler.h"

@implementation InputHandler

+(NSString *)getUserInput: promptString
{
    NSLog(@"%@", promptString);
    
    char inputString[255];
    char *result = fgets(inputString, 255, stdin);
    
    NSString *userInput = [[NSString stringWithCString:result encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return userInput;
}
@end
