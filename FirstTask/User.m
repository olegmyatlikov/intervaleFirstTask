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

-(NSNumber*) userId {
    NSLog(@"getter userId called");
    return _userId;
}

-(void) setUserId:(NSNumber *)userId {
    NSLog(@"setter userId called");
    _userId = userId;
}


-(void) dealloc {
    NSLog(@"dealloc %@", self);
    [super dealloc];
}

@end
