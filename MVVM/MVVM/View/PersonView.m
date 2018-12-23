//
//  PersonView.m
//  MVVM
//
//  Created by sunshine on 23/12/2018.
//  Copyright © 2018 loved. All rights reserved.
//

#import "PersonView.h"
#import "KVOController.h"

@interface PersonView()

@property (nonatomic,strong) UILabel *contentLabel;
@property (nonatomic,strong) PersonViewModel *personViewModel;
@property (nonatomic,strong) UIButton *askButton;

@end

@implementation PersonView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self){
        self.backgroundColor = [UIColor whiteColor];
        self.contentLabel = [[UILabel alloc] init];
        self.contentLabel.frame = CGRectMake(100, 100, 300, 100);
        self.contentLabel.textColor = [UIColor blackColor];
        [self addSubview:self.contentLabel];
        
        self.askButton = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 300, 100)];
        self.askButton.backgroundColor = [UIColor blackColor];
        [self.askButton setTitle:@"改变主意" forState:UIControlStateNormal];
        [self.askButton addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.askButton];
    }
    return self;
}

- (void)setWithViewModel:(PersonViewModel *)personViewModel{
    self.personViewModel = personViewModel;
    [self.KVOController observe:personViewModel keyPath:@"content" options:NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSString *,id> * _Nonnull change) {
        NSString *newContent = change[NSKeyValueChangeNewKey];
        self.contentLabel.text = newContent;
    }];
}

- (void)buttonClick{
    [self.personViewModel changeSayContent];
}
@end
