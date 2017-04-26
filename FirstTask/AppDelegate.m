//
//  AppDelegate.m
//  FirstTask
//
//  Created by Admin on 21.04.17.
//  Copyright © 2017 Oleg Myatlikov. All rights reserved.
//

#import "AppDelegate.h"
#import "User.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    
    
    
    
    User* user1 = [[User alloc] initUserWithName:@"Oleg" lastName:@"Myatlikov"];
    User* user2 = [[User alloc] initUserWithName:@"Oleg2" lastName:@"Myatlikov2"];
    User* user3 = [[User alloc] initUserWithName:@"Oleg3" lastName:@"Myatlikov3"];
    User* user4 = [[User alloc] init];
    
    [user1 setUserId: @1];
    [user1 setBirthDateFromString:@"26/04/1989"];
    [user1 setAddress:@{@"city" : @"Gomel", @"country" : @"Belarus"}];
    
    NSLog(@"%@", [user1 userId]);
    NSLog(@"%@", [user1 firstName]);
    NSLog(@"%@", [user1 lastName]);
    NSLog(@"%@", [user1 birthDate]);
    NSLog(@"%@", [user1 country]);
    NSLog(@"%@", [user1 city]);
    NSLog(@"%@", [user1 compositeAddress]);

    

    //[user4 setFollowers: @[@"OLEG"]];
    [user4 addFollower:user3];
    [user4 addFollower:user2];
    NSLog(@"%@", [user4 followers]);

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
