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
@end

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
        [self setFollowers:[[NSArray alloc] init]];
        [self setFollowing:[[NSArray alloc] init]];
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


// get&set followers (atomic, copy)

-(NSArray *) followers {
        return _followers;
}

-(void) setFollowers:(NSArray *) followers {
    if (_followers != followers) {
        [_followers release];
        _followers = [followers mutableCopy];
    }
}


// get&set contactUser (nonatomic, assign)

-(BOOL) contactUser {
    return _contactUser;
}

-(void) setContactUser:(BOOL) contactUser {
    NSLog(@"contactUser cann't be changed");
}


// gette for city

-(NSString *) city {
    return [_address objectForKey:@"city"];
}

// gette for country

-(NSString *) country {
    return [_address objectForKey:@"country"];
}



#pragma mark - methods

-(void) printFullName {
    NSLog(@"%@ %@", self.firstName, self.lastName);
}

-(void) addFollower: (User *) user {
    if (![self isFollowerPerson:user]) {
        [_followers addObject:user];
    }
}

-(void) removeFollower: (User *) user {
    [_followers removeObject: user];
}

-(void) addFollowing: (User *) user {
    if (![self isFollowingPerson:user]) {
        [_following addObject: user];
    }
}

-(void) removeFollowing: (User *) user {
    [_following removeObject: user];
}

-(BOOL) isFollowerPerson: (User *) user {
    return [[self followers] containsObject: user];
}

-(BOOL) isFollowingPerson: (User *) user {
    return [[self following] containsObject: user];
}

-(NSString *) description {
    return [NSString stringWithFormat:@"\nUserID - %@ \nName - %@ \nLast name - %@  \nBirthday - %@ \nAdress - %@ \nFollowers - %d \nFollowing - %d", self.userId, self.firstName, self.lastName, self.birthDate, [self compositeAddress], self.followers.count, self.following.count];
}



#pragma mark - dealloc

-(void) dealloc {
    NSLog(@"dealloc %@", self);
    [_userId release];
    [_firstName release];
    [_lastName release];
    [_birthDate release];
    [_followers release];
    [_following release];
    [_address release];
//    [_city release];
//    [_country release];
//    [_contactUser release];
    
    [super dealloc];
}


@end
