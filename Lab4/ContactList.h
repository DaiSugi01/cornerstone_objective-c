//
//  ContactList.h
//  Lab4
//
//  Created by 杉原大貴 on 2021/02/25.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactList : NSObject

@property NSMutableArray<Contact *> *contactlist;

-(void)addContact:(Contact *)newContact;
-(void)displayUsers;
-(void)displayUserDetail: (NSInteger)userIndex;
-(void)findUserByName: (NSString *)userName;
-(BOOL)findUserByEmail: (NSString *)userEmail;

@end

NS_ASSUME_NONNULL_END
