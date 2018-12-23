//
//  PersonViewModel.h
//  MVVM
//
//  Created by sunshine on 23/12/2018.
//  Copyright © 2018 loved. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
NS_ASSUME_NONNULL_BEGIN

@interface PersonViewModel : NSObject

@property (nonatomic,copy) NSString *content;

- (void)setWithModel:(Person *)person;

- (void)changeSayContent;
@end

NS_ASSUME_NONNULL_END
