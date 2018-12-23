//
//  ViewController.m
//  MVVM
//
//  Created by sunshine on 23/12/2018.
//  Copyright © 2018 loved. All rights reserved.
//

#import "ViewController.h"
#import "MVVMViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self open];
    });
    
}

- (void)open{
    [self presentViewController:[MVVMViewController new] animated:YES completion:^{
        //
    }];
}

@end
