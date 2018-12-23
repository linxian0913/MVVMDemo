//
//  PersonViewModel.m
//  MVVM
//
//  Created by sunshine on 23/12/2018.
//  Copyright © 2018 loved. All rights reserved.
//

#import "PersonViewModel.h"
@interface PersonViewModel()

@property (nonatomic,strong)Person *personModel;

@end


@implementation PersonViewModel

- (void)setWithModel:(Person *)person{
    self.content = person.sayContent;
    self.personModel = person;
}

- (void)changeSayContent{
    self.personModel.sayContent = @"我要去逛街";
    self.content = self.personModel.sayContent;
}

@end
