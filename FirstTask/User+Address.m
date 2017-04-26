//
//  User+Address.m
//  FirstTask
//
//  Created by Admin on 24.04.17.
//  Copyright © 2017 Oleg Myatlikov. All rights reserved.
//

#import "User+Address.h"

@implementation User (Address)

-(NSString *) compositeAddress {
    
    NSString *result;
    
    
    if ([[self address] valueForKey:@"city"] != nil && [[self address] valueForKey:@"country"] != nil) { // если есть и страна и город
        result = [NSString stringWithFormat:@"%@, %@", [[self address] valueForKey:@"country"], [[self address] valueForKey:@"city"]];
        
    } else if ([[self address] valueForKey:@"country"] != nil) { // если есть только страна
        result = [[self address] valueForKey:@"country"];
        
    } else if ([[self address] valueForKey:@"city"] != nil) { // если есть только город
        result = [[self address] valueForKey:@"city"];
        
    } else { // нету ни страны, ни города
        result = @"unknown";
    }
    
    
    return result;
}

@end
