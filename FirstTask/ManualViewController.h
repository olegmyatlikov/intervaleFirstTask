//
//  ManualViewController.h
//  FirstTask
//
//  Created by Admin on 21.04.17.
//  Copyright © 2017 Oleg Myatlikov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ManualViewController : UIViewController

@property (nonatomic, unsafe_unretained) NSString *firstName;
@property (nonatomic, unsafe_unretained) NSString *lastName;
@property (nonatomic, unsafe_unretained) NSString *sayHelloLabel;

-(void) sayHello;

@end
