//
//  main.m
//  Labs
//
//  Created by 杉原大貴 on 2021/02/22.
//

#import <Foundation/Foundation.h>

NSString *
getUserInput(int maxLength, NSString *prompt) {
    if (maxLength < 1) {
        maxLength = 255;
    }
    NSLog(@"%@ ", prompt);
    char inputChars[maxLength];
    char *result = fgets(inputChars, maxLength, stdin);
    if (result != NULL) {
        NSString *objCString = [NSString stringWithUTF8String:inputChars];
        NSCharacterSet *whitespaces = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        NSString *trimmedInput = [objCString stringByTrimmingCharactersInSet: whitespaces];
        return trimmedInput;
    }
    return NULL;
}

void
displayNumberize(NSString *strInput) {
    if ([strInput isEqualTo:@"0"]) {
        int value = [strInput intValue];
        NSLog(@"Numberized to %d", value);
        return;
    }
    
    int value = [strInput intValue] ? [strInput intValue] : 0;
    if (value == 0) {
        NSLog(@"Given input '%@' can't numberize", strInput);
    } else {
        NSLog(@"Numberized to %i", value);
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while (YES) {
            NSString *strInput = getUserInput(255, @"\nEnter your String ('q' to quit): ");
            if ([strInput isEqualToString:@"q"]) { break; }
            while (YES) {
                NSString *option = getUserInput(10, @"\nChoose one of the following options:\n1. Uppercase\n2. Lowercase\n3. Numberize\n4. Canadianize\n5. Respond\n6. De-Space-It\n7. Word Count\n8. Remove Punctuations\n9. Done\n");
                if ([option isEqualToString:@"1"]) {
                    NSLog(@"%@", [strInput uppercaseString]);
                } else if ([option isEqualToString:@"2"]) {
                    NSLog(@"%@", [strInput lowercaseString]);
                } else if ([option isEqualToString:@"3"]) {
                    displayNumberize(strInput);
                } else if ([option isEqualToString:@"4"]) {
                    NSLog(@"%@, eh?", strInput);
                } else if ([option isEqualToString:@"5"]) {
                    NSString *lastChar = [strInput substringFromIndex: [strInput length] - 1];
                    if ([lastChar isEqualTo:@"?"]) {
                        NSLog(@"I don't know");
                    } else if ([lastChar isEqualTo:@"!"]) {
                        NSLog(@"Whoa, calm down!");
                    } else {
                        NSLog(@"please use '?' or '!' at the end.");
                    }
                } else if ([option isEqualToString:@"6"]) {
                    NSString *replaedString = [strInput stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                    NSLog(@"%@", replaedString);
                } else if ([option isEqualToString:@"7"]) {
                    int wordLength = [strInput length];
                    NSString *prefix = (wordLength > 1) ? @"words" : @"word";
                    NSString *wordLengthString = [NSString stringWithFormat:@"%i %@", wordLength, prefix];
                    NSLog(@"%@", wordLengthString);
                } else if ([option isEqualToString:@"8"]) {
                    NSString *replaedString = [[strInput componentsSeparatedByCharactersInSet:[[NSCharacterSet alphanumericCharacterSet] invertedSet]] componentsJoinedByString:@""];
                    NSLog(@"%@", replaedString);
                } else if (option == nil || [option isEqualToString:@"9"]) {
                    NSLog(@"Next String!");
                    break;
                } else {
                    NSLog(@"Not available.");
                }
            }
        }
    }
    return 0;
}


