//
//  ViewController2.m
//  TaskOneTwoThereFour
//
//  Created by lip on 16/12/29.
//  Copyright © 2016年 com.sdmm5at. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@property (strong,nonatomic) UIButton *button;

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tabBarItem.title = @"朋友圈";
    self.tabBarItem.badgeValue = @"3";
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    _button = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 180, 34)];
    [_button setTitle:@"按钮" forState:0];
    [_button setTitle:@"button" forState:1];
    [_button setTintColor:[UIColor blackColor]];
    _button.backgroundColor = [UIColor redColor];
    [_button addTarget:self action:@selector(pushNextView) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_button];
}

- (void)pushNextView
{
    ViewController *vc = [[ViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
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
