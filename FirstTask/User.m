//
//  User.m
//  FirstTask
//
//  Created by Admin on 19.04.17.
//  Copyright © 2017 Oleg Myatlikov. All rights reserved.
//

#import "User.h"

@interface User() {
    NSMutableArray *_followers;
    NSMutableArray *_following;  
}

@implementation User
@synthesize userId = _userId;
@synthesize firstName = _firstName;
@synthesize lastName = _lastName;
@synthesize birthDate = _birthDate;
@synthesize folowers = _folowers;
@synthesize folowing = _folowing;
@synthesize address = _address;
@synthesize city = _city;
@synthesize country = _country;
@synthesize contactUser = _contactUser;


// Инициализаторы

-(id) initUserWithID: (NSNumber*) userId
           firstName: (NSMutableString*) name
            lastName: (NSMutableString*) lastName
            birthDay: (NSDate*) birthDay
{
    self = [super init];
    if (self) {
        [self setUserId:userId];
        [self setFirstName:name];
        [self setLastName:lastName];
        [self setBirthDate:birthDay];
    }
    return self;
}

-(id) initUserOnlyWithID: (NSNumber*) userId {
    self = [self initUserWithID:userId firstName:nil lastName:nil birthDay:nil];
    return self;
}

-(id) initUserWithName: (NSMutableString*) name lastName: (NSMutableString*) lastName  {
    self = [self initUserWithID:nil firstName:name lastName:lastName birthDay:nil];
    return self;
}


// get&set userId (atomic, retain)

-(NSNumber *) userId {
    NSLog(@"getter userId was called");
    return [[userId retain] autorelease];
}

-(void) setUserId:(NSNumber *) userId {
    NSLog(@"setter userId was called");
    [_userId release];
    [userId retain];
    _userId = userId;       
}


// get&set firstName (nonatomic, retain)

-(NSString *) firstName {
   NSLog(@"getter firstName was called");
   return [[firstName retain] autorelease];                   
}           

-(void) setFirstName:(NSString *) firstName {
    NSLog(@"setter firstName was called");
    [_firstName release];
    [firstName retain];
    _firstName = firstName;       
}


// get&set lastName (nonatomic, copy)

-(NSString *) lastName {
   NSLog(@"getter lastName was called");
   return [[lastName copy] autorelease];                   
}           

-(void) setLastName:(NSString *) lastName {
    NSLog(@"setter lastName was called");
    if (_lastName != lastName) {
       [_lastName release];
       _lastName = [lastName copy];        
    }
}


// get&set folowers (atomic, copy)

-(NSArray *) folowers {
   NSLog(@"getter folowers was called");
   return [[folowers copy] autorelease];                   
}           
-(void) folowers:(NSArray *) folowers { 
   if (folowers != folowers) {
   [_folowers release];
   _folowers = [folowers copy];        
   }
}


// get&set folowers (nonatomic, assign)

-(BOOL) contactUser {
    NSLog(@"getter contactUser was called");
    return contactUser;//???
}

-(void) setContactUser:(NSNumber *) contactUser {
    NSLog(@"setter contactUser was called");
    [contactUser release];       
}


-(void) printFullName {
    NSLog[@"%@ %@.", self.firstName, self.lastName];           
}

-(void) addFolower: (id) user {
    [_folower addObject: user];           
}

-(void) removeFolower: (id) user {
    [_folower removeObject: user];           
}

-(void) addFolowing: (id) user {
    [_folowing addObject: user];           
}

-(void) removeFolowing: (id) user {
    [_folowing removeObject: user];           
}

-(BOOL) isFollowerPerson: (id) user {
    return [_folower containsObject: user]; 
}

-(BOOL) isFollowingPerson: (id) user {
    return [_folowing containsObject: user]; 
}

-(void) description: (id) user {
    NSLog[@" User ID: %@ \n Name: %@ \n Lastname: %@ \n Birthday: %@ \n Folowers: %@ \n Folowing: %@ \n City: %@ \n Country: %@", user.UserID, user.firstName, user.lastName, user.folowers, user.folowing, user.city, user.country];          
}

-(void) dealloc {
    NSLog(@"dealloc %@", self);

    [_birthDate release];
    [super dealloc];
}


@end
