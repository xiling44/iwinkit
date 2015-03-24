//
//  ViewController.m
//  iwinkit_3_23
//
//  Created by iwinkit on 3/23/15.
//  Copyright (c) 2015 iwinkit. All rights reserved.
//

#import "ViewController.h"
#import <Parse/Parse.h>
@interface ViewController ()

@end

@implementation ViewController
NSString *letters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

-(NSString *) randomStringWithLength: (int) len {
    
    NSMutableString *randomString = [NSMutableString stringWithCapacity: len];
    
    for (int i=0; i<len; i++) {
        [randomString appendFormat: @"%C", [letters characterAtIndex: arc4random_uniform([letters length])]];
    }
    
    return randomString;
}

- (void)viewDidLoad {
//    for (int i = 0; i <20;i++){
        [super viewDidLoad];
        // Do any additional setup after loading the view, typically from a nib.
        PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
 
        //self randomStringWithLengthb: 5]; s
        NSLog(@"test------");
        NSString *name = [self randomStringWithLength: 5];
        testObject[@"driver"] = name;
        PFObject *shield = [PFObject objectWithClassName:@"User"];
//    for (auto ch: shield){std::cout<<ch;}
        testObject[@"testStorage"] = shield;
        shield[@"driver"] = @"mytest_1";

        [testObject saveInBackground];
    //}
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)logInButtonTapped:(id)sender {
    NSLog(@"nothing");
    
}

@end
