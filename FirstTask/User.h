//
//  User.h
//  FirstTask
//
//  Created by Admin on 19.04.17.
//  Copyright © 2017 Oleg Myatlikov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PersonBirthday.h"

@interface User : NSObject <PersonBirthday>

@property (atomic, retain) NSNumber* userId;
@property (nonatomic, retain) NSMutableString* firstName;
@property (nonatomic, copy) NSMutableString* lastName;
@property (nonatomic, retain) NSDate* birthDate;
@property (atomic, copy) NSArray* followers;
@property (nonatomic, copy) NSArray* following;
@property (nonatomic, retain) NSDictionary* address;
@property (nonatomic, copy, readonly) NSString* city;
@property (nonatomic, copy, readonly) NSString* country;
@property (nonatomic, assign) BOOL contactUser;


// Основной инициализатор
-(id) initUserWithID: (NSNumber*) userId
           firstName: (NSMutableString*) name
            lastName: (NSMutableString*) lastName;

// Кастомные конструкторы
-(id) initUserOnlyWithID: (NSNumber*) userId;
-(id) initUserWithName: (NSMutableString*) name lastName: (NSMutableString*) lastName;


// public methods

-(void) printFullName;

-(void) addFollower: (User *) user;

-(void) removeFollower: (User *) user;

-(void) addFollowing: (User *) user;

-(void) removeFollowing: (User *) user;

-(BOOL) isFollowerPerson: (User *) user;

-(BOOL) isFollowingPerson: (User *) user;



@end
