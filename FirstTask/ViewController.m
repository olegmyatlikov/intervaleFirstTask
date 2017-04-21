//
//  ViewController.m
//  FirstTask
//
//  Created by Admin on 21.04.17.
//  Copyright © 2017 Oleg Myatlikov. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}



- (IBAction)buttom:(UIButton *)sender {
    [_labelHello setText:[NSString stringWithFormat:@"Hello, %@ %@!", [_firstNameTextField text], [_lastNameTextField text]]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_labelHello release];
    [_firstNameTextField release];
    [_lastNameTextField release];
    [super dealloc];
}
@end
