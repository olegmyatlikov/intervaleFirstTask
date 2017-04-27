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

    @autoreleasepool {
        User* user1 = [[User alloc] initUserWithID:@1 firstName:[NSMutableString stringWithFormat:@"%@", @"Oleg"] lastName:[NSMutableString stringWithFormat:@"%@", @"Myatlikov"]];
        User* user2 = [[User alloc] initUserWithID:@2 firstName:[NSMutableString stringWithFormat:@"%@", @"Oleg2"] lastName:[NSMutableString stringWithFormat:@"%@", @"Myatlikov2"]];
        User* user3 = [[User alloc] initUserWithID:@4 firstName:[NSMutableString stringWithFormat:@"%@", @"Oleg3"] lastName:[NSMutableString stringWithFormat:@"%@", @"Myatlikov3"]];
        User* user4 = [[User alloc] initUserWithID:@4 firstName:[NSMutableString stringWithFormat:@"%@", @"Oleg4"] lastName:[NSMutableString stringWithFormat:@"%@", @"Myatlikov4"]];
        User* user5 = [[User alloc] initUserWithID:@5 firstName:[NSMutableString stringWithFormat:@"%@", @"Oleg5"] lastName:[NSMutableString stringWithFormat:@"%@", @"Myatlikov5"]];
        User* user6 = [[User alloc] initUserWithID:@6 firstName:[NSMutableString stringWithFormat:@"%@", @"Oleg6"] lastName:[NSMutableString stringWithFormat:@"%@", @"Myatlikov6"]];
        User* user7 = [[User alloc] initUserWithID:@7 firstName:[NSMutableString stringWithFormat:@"%@", @"Oleg7"] lastName:[NSMutableString stringWithFormat:@"%@", @"Myatlikov7"]];
        User* user8 = [[User alloc] initUserWithID:@8 firstName:[NSMutableString stringWithFormat:@"%@", @"Oleg8"] lastName:[NSMutableString stringWithFormat:@"%@", @"Myatlikov8"]];
        User* user9 = [[User alloc] initUserWithID:@9 firstName:[NSMutableString stringWithFormat:@"%@", @"Oleg9"] lastName:[NSMutableString stringWithFormat:@"%@", @"Myatlikov9"]];
        User* user10 = [[User alloc] initUserWithID:@10 firstName:[NSMutableString stringWithFormat:@"%@", @"Oleg10"] lastName:[NSMutableString stringWithFormat:@"%@", @"Myatlikov"]];
        
        [user1 setUserId: @1];
        [user1 setBirthDateFromString:@"26/04/1989"];
        [user1 setAddress:@{@"city" : @"Gomel", @"country" : @"Belarus"}];
        [user1 setFollowers:@[user2, user3, user4]];
        [user1 setFollowing:@[user2, user3, user4, user5, user6, user7, user8, user9, user10]];
        
        //[user4 setFollowers: @[@"OLEG"]];
        [user1 addFollower:user3];
        [user1 addFollower:user2];
        [user1 addFollower:user2];
        NSLog(@"\n%@", [user1 description]);
    }
    
   

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
