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
    NSLog(@"%f", midleOfView);
    
    // first name LABEL
    UILabel *firstNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, 150, midleOfView, 30)];
    [firstNameLabel setFont:[UIFont systemFontOfSize:15]];
    [firstNameLabel setTextColor: [UIColor blackColor]];
    [firstNameLabel setTextAlignment:NSTextAlignmentLeft];
    [firstNameLabel setText:@"First name"];
    [self.view addSubview:firstNameLabel];
    
    // fist name TEXTFIELD
    UITextField *firstNameTextField = [[UITextField alloc] initWithFrame:CGRectMake(midleOfView, 150, midleOfView, 30)];
    [firstNameTextField setFont:[UIFont systemFontOfSize:15]];
    [firstNameTextField borderStyle];
    [firstNameTextField setTextAlignment: NSTextAlignmentCenter];
    [firstNameTextField setBorderStyle:UITextBorderStyleRoundedRect];
    [self.view addSubview:firstNameTextField];
    [firstNameTextField addTarget:self action:@selector(endEdingFirstName:) forControlEvents:UIControlEventEditingDidEnd];
    
     // last name LABEL
    UILabel *lastNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, 200, midleOfView, 30)];
    [lastNameLabel setFont:[UIFont systemFontOfSize:15]];
    [lastNameLabel setTextColor: [UIColor blackColor]];
    [lastNameLabel setTextAlignment:NSTextAlignmentLeft];
    [lastNameLabel setText:@"Last name"];
    [self.view addSubview:lastNameLabel];
    
    // last name TEXTFIELD
    UITextField *lastNameTextField = [[UITextField alloc] initWithFrame:CGRectMake(midleOfView, 200, midleOfView, 30)];
    [lastNameTextField setFont:[UIFont systemFontOfSize:15]];
    [lastNameTextField borderStyle];
    [lastNameTextField setTextAlignment: NSTextAlignmentCenter];
    [lastNameTextField setBorderStyle:UITextBorderStyleRoundedRect];
    [self.view addSubview:lastNameTextField];
    [lastNameTextField addTarget:self action:@selector(endEdingLastName:) forControlEvents:UIControlEventEditingDidEnd];

    // say hello BUTTOM
    UIButton *buttomSayHello = [[UIButton alloc] initWithFrame:CGRectMake(40, 260, 240, 30)];
    [buttomSayHello setTintColor:[UIColor whiteColor]];
    [buttomSayHello.titleLabel setFont:[UIFont systemFontOfSize:15]];
    [buttomSayHello setBackgroundColor: [UIColor colorWithRed:0.0f green:0.48f blue:1.0f alpha:1.0f]];
    [buttomSayHello setTitle:@"Say hello" forState:UIControlStateNormal];
    [self.view addSubview:buttomSayHello];
    [buttomSayHello addTarget:self action:@selector(sayHello) forControlEvents:UIControlEventTouchUpInside];
    
    // output label "say hello"
    UILabel *sayHelloOuputLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 320, self.view.bounds.size.width, 30)];
    [sayHelloOuputLabel setTextColor:[UIColor blackColor]];
    [sayHelloOuputLabel setFont:[UIFont systemFontOfSize:20]];
    [sayHelloOuputLabel setTextAlignment:NSTextAlignmentCenter];
    [sayHelloOuputLabel setText:@"Hello"];
    [self.view addSubview:sayHelloOuputLabel];
    
}

-(void)endEdingFirstName: (UITextField *)textField {
    _firstName = [textField text];
}

-(void)endEdingLastName: (UITextField *)textField {
    _lastName = [textField text];
}

-(void) sayHello {
    [self.view endEditing:YES];
    NSLog(@"Hello %@ %@!", _firstName, _lastName);
    
    _sayHelloLabel = [NSString stringWithFormat:@"Hello %@ %@!", _firstName, _lastName];
    
    
}



@end
