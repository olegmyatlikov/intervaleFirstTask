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
    
    // first name LABEL
    UILabel *firstNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, 150, 100, 30)];
    [firstNameLabel setFont:[UIFont systemFontOfSize:15]];
    [firstNameLabel setTextColor: [UIColor blackColor]];
    [firstNameLabel setText:@"First name"];
    [self.view addSubview:firstNameLabel];
    
    // fist name TEXTFIELD
    UITextField *firstNameTextField = [[UITextField alloc] initWithFrame:CGRectMake(140, 150, 140, 30)];
    [firstNameTextField setFont:[UIFont systemFontOfSize:15]];
    [firstNameTextField borderStyle];
    [firstNameTextField setTextAlignment: NSTextAlignmentCenter];
    [firstNameTextField setBorderStyle:UITextBorderStyleRoundedRect];
    [self.view addSubview:firstNameTextField];
    
     // last name LABEL
    UILabel *lastNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, 200, 100, 30)];
    [lastNameLabel setFont:[UIFont systemFontOfSize:15]];
    [lastNameLabel setTextColor: [UIColor blackColor]];
    [lastNameLabel setText:@"Last name"];
    [self.view addSubview:lastNameLabel];
    
    // last name TEXTFIELD
    UITextField *lastNameTextField = [[UITextField alloc] initWithFrame:CGRectMake(140, 200, 140, 30)];
    [lastNameTextField setFont:[UIFont systemFontOfSize:15]];
    [lastNameTextField borderStyle];
    [lastNameTextField setTextAlignment: NSTextAlignmentCenter];
    [lastNameTextField setBorderStyle:UITextBorderStyleRoundedRect];
    [self.view addSubview:lastNameTextField];

    // say hello BUTTOM
    UIButton *buttomSayHello = [[UIButton alloc] initWithFrame:CGRectMake(40, 260, 240, 30)];
    [buttomSayHello setTintColor:[UIColor whiteColor]];
    [buttomSayHello.titleLabel setFont:[UIFont systemFontOfSize:15]];
    [buttomSayHello setBackgroundColor: [UIColor colorWithRed:0.0f green:0.48f blue:1.0f alpha:1.0f]];
    [buttomSayHello setTitle:@"Say hello" forState:UIControlStateNormal];
    [self.view addSubview:buttomSayHello];
    
}




@end
