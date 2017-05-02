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
    
    float midleOfView = (self.view.bounds.size.width - 40) / 2 ;
    float buttonWidth = self.view.bounds.size.width - 80;
    
    // first name LABEL
    UILabel *firstNameLabel = [[[UILabel alloc] initWithFrame:CGRectMake(40, 150, midleOfView, 30)] autorelease];
    [firstNameLabel setFont:[UIFont systemFontOfSize:15]];
    [firstNameLabel setTextColor: [UIColor blackColor]];
    [firstNameLabel setTextAlignment:NSTextAlignmentLeft];
    [firstNameLabel setText:@"First name"];
    [self.view addSubview:firstNameLabel];
    
    // fist name TEXTFIELD
    _firstNameTextField = [[[UITextField alloc] initWithFrame:CGRectMake(midleOfView, 150, midleOfView, 30)] autorelease];
    [_firstNameTextField setFont:[UIFont systemFontOfSize:15]];
    [_firstNameTextField borderStyle];
    [_firstNameTextField setTextAlignment: NSTextAlignmentCenter];
    [_firstNameTextField setBorderStyle:UITextBorderStyleRoundedRect];
    [self.view addSubview:_firstNameTextField];
    
     // last name LABEL
    UILabel *lastNameLabel = [[[UILabel alloc] initWithFrame:CGRectMake(40, 200, midleOfView, 30)] autorelease];
    [lastNameLabel setFont:[UIFont systemFontOfSize:15]];
    [lastNameLabel setTextColor: [UIColor blackColor]];
    [lastNameLabel setTextAlignment:NSTextAlignmentLeft];
    [lastNameLabel setText:@"Last name"];
    [self.view addSubview:lastNameLabel];
    
    // last name TEXTFIELD
    _lastNameTextField = [[[UITextField alloc] initWithFrame:CGRectMake(midleOfView, 200, midleOfView, 30)] autorelease];
    [_lastNameTextField setFont:[UIFont systemFontOfSize:15]];
    [_lastNameTextField borderStyle];
    [_lastNameTextField setTextAlignment: NSTextAlignmentCenter];
    [_lastNameTextField setBorderStyle:UITextBorderStyleRoundedRect];
    [self.view addSubview:_lastNameTextField];

    // say hello BUTTOM
    UIButton *buttomSayHello = [[[UIButton alloc] initWithFrame:CGRectMake(40, 260, buttonWidth, 30)] autorelease];
    [buttomSayHello setTintColor:[UIColor whiteColor]];
    [buttomSayHello.titleLabel setFont:[UIFont systemFontOfSize:15]];
    [buttomSayHello setBackgroundColor: [UIColor colorWithRed:0.0f green:0.48f blue:1.0f alpha:1.0f]];
    [buttomSayHello setTitle:@"Say hello" forState:UIControlStateNormal];
    [buttomSayHello addTarget:self action:@selector(sayHello) forControlEvents:UIControlEventTouchUpInside];
    [buttomSayHello setTitleEdgeInsets: UIEdgeInsetsMake(0, 0, 0, 0)];
    [buttomSayHello setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
    [self.view addSubview:buttomSayHello];
    
    // output label "say hello"
    _sayHelloLabel = [[[UILabel alloc] initWithFrame:CGRectMake(0, 320, self.view.bounds.size.width, 30)]autorelease];
    [_sayHelloLabel setTextColor:[UIColor blackColor]];
    [_sayHelloLabel setFont:[UIFont systemFontOfSize:20]];
    [_sayHelloLabel setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:_sayHelloLabel];
    
}

-(void) sayHello {
    [self.view endEditing:YES];
    _sayHelloLabel.text = [NSString stringWithFormat:@"Hello, %@ %@!", [_firstNameTextField text], [_lastNameTextField text]];
}

-(void) dealloc {
//    [_firstNameTextField release];
//    [_lastNameTextField release];
//    [_sayHelloLabel release];
    
    [super dealloc];
}


@end
