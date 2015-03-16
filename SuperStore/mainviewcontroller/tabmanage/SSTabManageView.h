//
//  SSTabManageView.h
//  SuperStore
//
//  Created by 马权 on 3/15/15.
//  Copyright (c) 2015 SuperStore. All rights reserved.
//

@class SSTabManageView;

@protocol SSTabManageViewDataSource <NSObject>

- (UIView *)tabManageView:(SSTabManageView *)tabManageView tabOfItem:(NSInteger)index;

@end

@interface SSTabManageView : UIView

- (void)reloadTabManageView;

@end
