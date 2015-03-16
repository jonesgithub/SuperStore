//
//  SSMainView.m
//  SuperStore
//
//  Created by 马权 on 3/15/15.
//  Copyright (c) 2015 SuperStore. All rights reserved.
//

#import "SSMainView.h"

@interface SSMainView ()

{
    UIView *mbottomView;
    UIView *contentView;
}

@end

@implementation SSMainView

- (void)loadContentView:(UIView *)view {
    contentView = view;
}

- (void)loadBottomBar:(UIView *)view {
    mbottomView = view;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)layoutSubviews {
    [super layoutSubviews];
    mbottomView.frame = CGRectMake(0, self.frame.size.height - 60, self.frame.size.width, 60);
    contentView.frame = CGRectMake(0, 64, self.frame.size.width, self.frame.size.height - 60 - 64);
}

@end
