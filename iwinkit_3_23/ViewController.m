//
//  ViewController.m
//  iwinkit_3_23
//
//  Created by iwinkit on 3/23/15.
//  Copyright (c) 2015 iwinkit. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)logInButtonTapped:(id)sender {
    [self performSegueWithIdentifier:@"HomePageDisplay" sender:self];
    
}

@end
