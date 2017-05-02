//
//  User.m
//  FirstTask
//
//  Created by Admin on 19.04.17.
//  Copyright © 2017 Oleg Myatlikov. All rights reserved.
//

#import "User.h"

@implementation User
@synthesize userId = _userId;
@synthesize firstName = _firstName;
@synthesize lastName = _lastName;
@synthesize birthDate = _birthDate;
@synthesize followers = _followers;
@synthesize following = _following;
@synthesize address = _address;
@synthesize city = _city;
@synthesize country = _country;
@synthesize contactUser = _contactUser;



#pragma mark - Initializers

// Инициализаторы

-(id) initUserWithID: (NSNumber*) userId
    firstName: (NSMutableString*) name
    lastName: (NSMutableString*) lastName
{
    self = [super init];
    if (self) {
        [self setUserId:userId];
        [self setFirstName:name];
        [self setLastName:lastName];
        [self setFollowers:[[[NSArray alloc] init] autorelease]];
        [self setFollowing:[[[NSArray alloc] init] autorelease]];
    }
    return self;
}

-(id) initUserOnlyWithID: (NSNumber*) userId {
    self = [self initUserWithID:userId firstName:nil lastName:nil];
    return self;
}

-(id) initUserWithName: (NSMutableString*) name lastName: (NSMutableString*) lastName  {
    self = [self initUserWithID:nil firstName:name lastName:lastName];
    return self;
}



#pragma mark - getters & setters

// get&set userId (atomic, retain)

-(NSNumber *) userId {
    @synchronized (self) {
        return [[_userId retain] autorelease];
    }
}

-(void) setUserId:(NSNumber *) userId {
    if (_userId != userId) {
        NSNumber *oldValue = _userId;
        _userId = [userId retain];
        [oldValue release];
    }
}


// get&set firstName (nonatomic, retain)

-(NSString *) firstName {
    return _firstName;
}

-(void) setFirstName:(NSString *) firstName {
    if (_firstName != firstName) {
        [_firstName release];
        _firstName = [firstName copy];
    }
}


// get&set lastName (nonatomic, copy)

-(NSString *) lastName {
    return _lastName;
}

-(void) setLastName:(NSString *) lastName {
    if (_lastName != lastName) {
        [_lastName release];
        _lastName = [lastName copy];
    }
}


// get&set contactUser (nonatomic, assign)

-(BOOL) isContactUser {
    return _contactUser;
}

-(void) setContactUser:(BOOL) contactUser {
    NSLog(@"contactUser cann't be changed");
}


// getter for city

-(NSString *) city {
    return [_address objectForKey:@"city"];
}

// getter for country

-(NSString *) country {
    return [_address objectForKey:@"country"];
}



#pragma mark - methods

-(void) printFullName {
    NSLog(@"%@ %@", self.firstName, self.lastName);
}


-(NSString *) description {
    return [NSString stringWithFormat:@"\nUserID - %@ \nName - %@ \nLast name - %@  \nBirthday - %@ \nAdress - %@ \nFollowers - %d \nFollowing - %d", self.userId, self.firstName, self.lastName, self.birthDate, [self compositeAddress], self.followers.count, self.following.count];
}



#pragma mark - dealloc

-(void) dealloc {
    [_userId release];
    [_firstName release];
    [_lastName release];
    [_birthDate release];
    [_followers release];
    [_following release];
    [_address release];
    [_city release];
    [_country release];
    //_contactUser = nil;
    
    [super dealloc];
}


@end
