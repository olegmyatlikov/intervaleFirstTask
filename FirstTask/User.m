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
@synthesize folowers = _followers;
@synthesize folowing = _following;
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
    @synchronized (self) {
        return [[_userId retain] autorelease];
    }
}

-(void) setUserId:(NSNumber *) userId {
    NSLog(@"setter userId was called");
    _userId = userId;
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
    NSLog(@"getter lastName was called");
    return _lastName;
}

-(void) setLastName:(NSString *) lastName {
    NSLog(@"setter lastName was called");
    if (_lastName != lastName) {
        [_lastName release];
        _lastName = [lastName copy];
    }
}


// get&set folowers (atomic, copy)

-(NSArray *) followers {
    NSLog(@"getter folowers was called");
        return _followers;
}

-(void) folowers:(NSArray *) followers {
    if (_followers != followers) {
        [_followers release];
        _followers = [followers copy];
    }
}


// get&set folowers (nonatomic, assign)

-(BOOL) contactUser {
    NSLog(@"getter contactUser was called");
    return _contactUser; //??
}

-(void) setContactUser:(BOOL) contactUser {
    NSLog(@"contactUser cann't be changed");
}


// methods

-(void) printFullName {
    NSLog(@"%@ %@", self.firstName, self.lastName);
}

-(void) addFolower: (id) user {
    [_followers addObject: user];
}

-(void) removeFolower: (id) user {
    [_followers removeObject: user];
}

-(void) addFolowing: (id) user {
    [_following addObject: user];
}

-(void) removeFolowing: (id) user {
    [_following removeObject: user];
}

-(BOOL) isFollowerPerson: (id) user {
    return [_followers containsObject: user];
}

-(BOOL) isFollowingPerson: (id) user {
    return [_following containsObject: user];
}

/*-(void) description: (User *) user {
 NSLog[@" User ID: %d \n Name: %@ \n Lastname: %@ \n Birthday: %@ \n Folowers: %@ \n Folowing: %@ \n City: %@ \n Country: %@", user.userId, user.firstName, user.lastName, user.folowers, user.folowing, user.city, user.country];
 }*/

-(void) dealloc {
    NSLog(@"dealloc %@", self);
    [_userId release];
    [_firstName release];
    [_lastName release];
    [_birthDate release];
    [_followers release];
    [_following release];
    [_address release];
    [_city release];
    [_country release];
    //[_contactUser release];
    
    [super dealloc];
}


@end
