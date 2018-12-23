//
//  PersonView.h
//  MVVM
//
//  Created by sunshine on 23/12/2018.
//  Copyright © 2018 loved. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PersonViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface PersonView : UIView

- (void)setWithViewModel:(PersonViewModel *)personViewModel;
@end

NS_ASSUME_NONNULL_END
