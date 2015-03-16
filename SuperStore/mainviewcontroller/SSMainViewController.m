//
//  SSMainViewController.m
//  SuperStore
//
//  Created by 马权 on 3/15/15.
//  Copyright (c) 2015 SuperStore. All rights reserved.
//

#import "SSMainViewController.h"
#import "SSPersonalSetViewController.h"
#import "SSBottomBarView.h"
#import "SSMainView.h"

@interface SSMainViewController ()

@property (retain, nonatomic) UIButton *positionButton;
@property (retain, nonatomic) UIBarButtonItem *personalSetButton;
@property (retain, nonatomic) SSBottomBarView *bottomBarView;
@property (retain, nonatomic) SSMainView *mainView;

@end

@implementation SSMainViewController

- (void)dealloc {
    [_positionButton release];
    _positionButton = nil;
    [_personalSetButton release];
    _personalSetButton = nil;
    [_bottomBarView release];
    _bottomBarView = nil;
    [_mainView release];
    _mainView = nil;
    [super dealloc];
}

- (void)loadView {
    _mainView = [[SSMainView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    self.view = _mainView;
    [self loadTopBar];
    [self loadBottomBar];
}

- (void)loadTopBar {
    _positionButton = [[UIButton alloc] init];
    _positionButton.frame = CGRectMake(0, 0, 100, 40);
    [_positionButton setTitle:@"软件园二期" forState:UIControlStateNormal];
    _positionButton.titleLabel.textColor = [UIColor whiteColor];
    [_positionButton addTarget:self action:@selector(positionSettingAction:) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.leftBarButtonItem = [[[UIBarButtonItem alloc] initWithCustomView:_positionButton] autorelease];
    
    self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc] initWithBarButtonSystemItem:(UIBarButtonSystemItemBookmarks) target:self action:@selector(personalSettingAction:)] autorelease];
}

- (void)loadBottomBar {
    @autoreleasepool {
        self.bottomBarView = [[NSBundle mainBundle] loadNibNamed:@"SSBottomBarView" owner:nil options:nil][0];
    }
    [_bottomBarView.shoppingCartButton addTarget:self action:@selector(shoppingCartAction:) forControlEvents:UIControlEventTouchUpInside];
    [_bottomBarView.accountButton addTarget:self action:@selector(accountAction:) forControlEvents:UIControlEventTouchUpInside];
    [_mainView loadBottomBar:self.bottomBarView];
    [_mainView addSubview:self.bottomBarView];
}

- (void)viewDidLoad {
    self.navigationController.navigationBar.barTintColor = [UIColor orangeColor];
    NSLog(@"%@", NSStringFromCGRect(self.navigationController.navigationBar.frame));
}


#pragma mark -
#pragma mark - ButtonAction
- (void)positionSettingAction:(id)sender {
    NSLog(@"设置位置信息");
}

- (void)personalSettingAction:(id)sender {
    NSLog(@"进入个人设置");
//    SSPersonalSetViewController *personalSetVc = [[SSPersonalSetViewController alloc] init];
//    [self.navigationController pushViewController:personalSetVc animated:YES];
//    [personalSetVc release];
}

- (void)shoppingCartAction:(id)sender {
    NSLog(@"进入购物车");
}

- (void)accountAction:(id)sender {
    NSLog(@"进入结账");
}

@end
