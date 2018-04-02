//
//  TabBarController.m
//  CustomNavigation
//
//  Created by wenHao Qiu on 2018/4/2.
//  Copyright © 2018年 文豪. All rights reserved.
//

#import "TabBarController.h"
#import "FirstViewController.h"
#import "NavigationController.h"

#define RGBColor(R,G,B)  [UIColor colorWithRed:(R)/255.0f green:(G)/255.0f blue:(B)/255.0f alpha:1.0f]

@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tabBar.tintColor = RGBColor(227, 90, 111);
    
    [self setupTabBar];
}

- (void)setupTabBar {
    
    FirstViewController *first = [[FirstViewController alloc] init];
    
    first.title = @"第一个";
    
    [self setTabBarWithController:first title:@"测试" image:@"" selectedImage:@""];
}

- (void)setTabBarWithController:(BaseViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    
    NavigationController *nav = [[NavigationController alloc] initWithRootViewController:vc];
    
    nav.tabBarItem.title = title;
    
    nav.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    nav.tabBarItem.image = [[UIImage imageNamed:image]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    [self addChildViewController:nav];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
