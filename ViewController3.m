//
//  ViewController3.m
//  TaskOneTwoThereFour
//
//  Created by lip on 16/12/29.
//  Copyright © 2016年 com.sdmm5at. All rights reserved.
//

#import "ViewController3.h"

@interface ViewController3 ()

@property (strong,nonatomic) UILabel *label;

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tabBarItem.title = @"设置";
    self.tabBarItem.badgeValue = @"4";
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    _label = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 300, 50)];
    _label.text = @"点击";
    _label.textAlignment = NSTextAlignmentCenter;
    _label.textColor = [UIColor grayColor];
    [self.view addSubview:_label];
    
    
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
