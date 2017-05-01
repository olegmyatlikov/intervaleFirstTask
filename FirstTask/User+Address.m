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
    
    
    if ([self city] != nil && [self country] != nil) {
        result = [NSString stringWithFormat:@"%@, %@", [self country], [self city]];
        
    } else if ([[self address] valueForKey:@"country"] != nil) {
        result = [self country];
        
    } else if ([[self address] valueForKey:@"city"] != nil) {
        result = [self city];
        
    } else { 
        result = @"unknown";
    }
    
    
    return result;
}

@end
