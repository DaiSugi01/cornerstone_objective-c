//
//  ContactList.m
//  Lab4
//
//  Created by 杉原大貴 on 2021/02/25.
//

#import "ContactList.h"

@implementation ContactList {
    NSMutableArray<Contact *> *_contactList;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactlist = [NSMutableArray array];
    }
    return self;
}

-(void)addContact:(Contact *)newContact {
    [self.contactlist addObject:newContact];
}

-(void)displayUsers {
    
    NSInteger listLength = [self.contactlist count];
    NSLog(@"*** User List ***");
    for (int i = 0; i < listLength; i++) {
        NSLog(@"#%d %@", i, [self.contactlist[i] name]);
    }
    NSLog(@"******");
}

-(void)displayUserDetail: (NSInteger)userIndex {
    if (userIndex < 0 || userIndex >= [self.contactlist count]) {
        return;
    }
    
    Contact *user = self.contactlist[userIndex];
    
    NSMutableString *printContent = [NSMutableString string];
    
    if (user == NULL) {
        NSLog(@"not found");
    } else {
        [printContent appendString:@"\n********* User Information *********\n"];
        [printContent appendFormat:@"Name: %@\n", [user name]];
        [printContent appendFormat:@"Email: %@\n", [user email]];
        for(NSString *key in [[user phoneNumberDic] allKeys]) {
            [printContent appendFormat:@"Phone number: %@, Type: %@\n", [[user phoneNumberDic] objectForKey:key], key];
        }
        [printContent appendString:@"***************************************"];
        NSLog(@"%@", printContent);
    }
}

-(void)findUserByName: (NSString *)userName {
    
    BOOL isFound = NO;
    for (int i = 0; i < [self.contactlist count]; i++) {
        NSString *contactUserName = [self.contactlist[i] name];
        if ([contactUserName rangeOfString:userName].location == NSNotFound) {
            continue;
        } else {
            NSLog(@"********************************");
            isFound = YES;
            [self displayUserDetail:i];
        }
    }
    
    if (!isFound) {
        NSLog(@"not found");
    }
}

-(BOOL)findUserByEmail: (NSString *)userEmail {
    
    NSInteger contactCount = [self.contactlist count];
    if (contactCount == 0) {
        return NO;
    }
    
    for (int i = 0; i < contactCount; i++) {
        NSString *contactUserEmail = [self.contactlist[i] email];
        if ([contactUserEmail isEqualTo:userEmail]) {
            return YES;
        }
    }
    return NO;
}

@end
