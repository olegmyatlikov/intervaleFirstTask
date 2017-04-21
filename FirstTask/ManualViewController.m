//
//  ManualViewController.m
//  FirstTask
//
//  Created by Admin on 21.04.17.
//  Copyright © 2017 Oleg Myatlikov. All rights reserved.
//

#import "ManualViewController.h"

@implementation ManualViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //UIView *view = [[UIView alloc] initWithFrame:self.view.bounds];
    //view.backgroundColor = [UIColor blueColor];
    
    // first name
    UILabel *firstNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, 150, 100, 30)];
    [firstNameLabel setTextColor: [UIColor blackColor]];
    [firstNameLabel setText:@"First name"];
    [self.view addSubview:firstNameLabel];
    
    UITextField *firstNameTextField = [[UITextField alloc] initWithFrame:CGRectMake(140, 150, 140, 30)];
    [firstNameTextField borderStyle];
    [firstNameTextField setTextAlignment: NSTextAlignmentCenter];
    [firstNameTextField setBorderStyle:UITextBorderStyleRoundedRect];
    [self.view addSubview:firstNameTextField];
    
    //last name
    UILabel *lastNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, 200, 100, 30)];
    [lastNameLabel setTextColor: [UIColor blackColor]];
    [lastNameLabel setText:@"Last name"];
    [self.view addSubview:lastNameLabel];
    
    UITextField *lastNameTextField = [[UITextField alloc] initWithFrame:CGRectMake(140, 200, 140, 30)];
    [lastNameTextField borderStyle];
    [lastNameTextField setTextAlignment: NSTextAlignmentCenter];
    [lastNameTextField setBorderStyle:UITextBorderStyleRoundedRect];
    [self.view addSubview:lastNameTextField];

    
    UIButton *buttomSayHello = [[UIButton alloc] initWithFrame:CGRectMake(100, 20, 200, 50)];
    buttomSayHello.backgroundColor = [UIColor blueColor];
    
    
}




@end
