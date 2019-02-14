//
//  ViewController.m
//  MenuView
//
//  Created by 毛文豪 on 2019/2/14.
//  Copyright © 2019 毛文豪. All rights reserved.
//
#define screenWidth   ([UIScreen mainScreen].bounds.size.width)
#define screenHeight  ([UIScreen mainScreen].bounds.size.height)

#import "ViewController.h"
#import "MMMenuView.h"

@interface ViewController ()<MenuViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"左右菜单";
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"左按钮" style:UIBarButtonItemStylePlain target:self action:@selector(leftBarDidClick)];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"右按钮" style:UIBarButtonItemStylePlain target:self action:@selector(rightBarDidClick)];
}

- (void)leftBarDidClick
{
    MMMenuView * menuView = [[MMMenuView alloc] initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight) titleArray:@[@"菜单1", @"菜单2"] left:YES];
    menuView.tag = 1;
    menuView.delegate = self;
    [self.navigationController.view addSubview:menuView];
}

- (void)rightBarDidClick
{
    MMMenuView * menuView = [[MMMenuView alloc] initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight) titleArray:@[@"菜单1", @"菜单2", @"菜单3", @"菜单4"] left:NO];
    menuView.tag = 2;
    menuView.delegate = self;
    [self.navigationController.view addSubview:menuView];
}

- (void)menuView:(MMMenuView *)menuView buttonDidClick:(UIButton *)button
{
    if (menuView.tag == 1) {
        NSLog(@"点击了左边%@", button.currentTitle);
    }else if (menuView.tag == 2)
    {
        NSLog(@"点击了右边%@", button.currentTitle);
    }
}


@end
