//
//  main.m
//  Lab4
//
//  Created by 杉原大貴 on 2021/02/25.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "ContactList.h"
#import "Contact.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {        
        InputCollector *ic = [[InputCollector alloc] init];
        ContactList * contactList = [[ContactList alloc] init];
        
        while (YES) {
            NSString *userInput = [ic inputForPrompt:@"\n*********** The menu *********** \n  What would you like to do next?\n* new - Create a new contact\n* list - List all contacts\n* show - show user detail\n* find - Find user by name\n* history - show the user log\n* quit - Exit Application:\n**********************************\n"];

            
            if ([userInput isEqualTo:@"quit"]) {
                NSLog(@"Good Bye!");
                break;
                
            } else if ([userInput isEqualTo:@"new"]) {
                [ic addUserHistory:userInput];
                Contact *contact = [[Contact alloc] init];
                [contact setEmail:[ic inputForPrompt:@"Type email address"]];
                BOOL isFoundUser = [contactList findUserByEmail:[contact email]];
                if (isFoundUser) {
                    NSLog(@"The email is already registered.");
                    continue;
                }
                
                [contact setName:[ic inputForPrompt:@"Type user name"]];
                
                BOOL isMoreInput = YES;
                while (YES) {
                    if (!isMoreInput) { break; }
                    NSString *phoneType = [ic inputForPrompt:@"Input the type of phone(e.g Mobile)"];
                    NSString *phoneNumber = [ic inputForPrompt:@"Input the phone number"];
                    [contact phoneNumberDic][phoneType] = phoneNumber;
                    NSString * userAnswer = [ic inputForPrompt:@"Would you like to add more phone number? (y/n)"];
                    isMoreInput = [userAnswer isEqualTo:@"y"];
                    NSLog(@"%@", [contact phoneNumberDic] );
                }
                
                [contactList addContact:contact];
                
            } else if ([userInput isEqualTo:@"list"]) {
                [ic addUserHistory:userInput];
                [contactList displayUsers];
                
            } else if ([userInput isEqualTo:@"show"]) {
                [ic addUserHistory:userInput];
                NSInteger userIndex = [[ic inputForPrompt:@"Which user you want to show? type user's index"] intValue];
                [contactList displayUserDetail:userIndex];
                
            } else if ([userInput isEqualTo:@"find"]) {
                [ic addUserHistory:userInput];
                NSString *userName = [ic inputForPrompt:@"What is user's name?"];
                [contactList findUserByName:userName];
                
            } else if ([userInput isEqualTo:@"history"]) {
                NSMutableString *printContent = [NSMutableString string];
                [printContent appendString:@"\n*********** User log ***********"];

                for (NSString *userLog in [ic userHistoryLog]) {
                    [printContent appendFormat:@"\n%@", userLog];
                }
                [printContent appendString:@"\n*********************************"];
                NSLog(@"%@", printContent);
                
            } else {
                NSLog(@"Invalid option. please type again.");
            }
        }
    }
    return 0;
}
