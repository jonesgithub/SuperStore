//
//  SSBottomBarView.m
//  SuperStore
//
//  Created by 马权 on 3/15/15.
//  Copyright (c) 2015 SuperStore. All rights reserved.
//

#import "SSBottomBarView.h"

@implementation SSBottomBarView

- (void)dealloc {
    [_shoppingCartButton release];
    [_accountButton release];
    [super dealloc];
}

@end
