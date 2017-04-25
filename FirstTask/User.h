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
@property (atomic, copy) NSArray* folowers;
@property (nonatomic, copy) NSArray* folowing;
@property (nonatomic, retain) NSDictionary* address;
@property (nonatomic, copy, readonly) NSString* city;
@property (nonatomic, copy, readonly) NSString* country;
@property (nonatomic, assign) BOOL contactUser;


// Основной инициализатор
-(id) initUserWithID: (NSNumber*) userId
           firstName: (NSMutableString*) name
            lastName: (NSMutableString*) lastName
            birthDay: (NSDate*) birthDay;

-(id) initUserOnlyWithID: (NSNumber*) userId;
-(id) initUserWithName: (NSMutableString*) name lastName: (NSMutableString*) lastName;

// public methods

-(void) printFullName;

-(void) addFolower: (id) user;

-(void) removeFolower: (id) user;

-(void) addFolowing: (id) user;

-(void) removeFolowing: (id) user;

-(BOOL) isFollowerPerson: (id) user;

-(BOOL) isFollowingPerson: (id) user;

//-(BOOL) isTodayBirthDate;


@end
