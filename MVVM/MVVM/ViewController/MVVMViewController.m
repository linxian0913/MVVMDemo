//
//  MVVMViewController.m
//  MVVM
//
//  Created by sunshine on 23/12/2018.
//  Copyright © 2018 loved. All rights reserved.
//

#import "MVVMViewController.h"
#import "Person.h"
#import "PersonView.h"
#import "PersonViewModel.h"


@interface MVVMViewController ()

@property (nonatomic,strong) Person *person;
@property (nonatomic,strong) PersonView *personView;
@property (nonatomic,strong) PersonViewModel *personViewModel;

@end

@implementation MVVMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.person = [Person new];
    self.person.sayContent = @"待家里";
    
    self.personViewModel = [PersonViewModel new];
    
    self.personView = [[PersonView alloc] init];
    self.personView.frame = self.view.bounds;
    [self.view addSubview:self.personView];
    
    [self.personView setWithViewModel:self.personViewModel];
    
    [self.personViewModel setWithModel:self.person];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
