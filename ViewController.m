//
//  ViewController.m
//  TaskOneTwoThereFour
//
//  Created by lip on 16/12/29.
//  Copyright © 2016年 com.sdmm5at. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>

@property (strong,nonatomic) UIScrollView *scrollView;
@property (strong,nonatomic) UIPageControl *pageControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tabBarItem.title = @"消息";
    self.tabBarItem.badgeValue = @"1";
    self.tabBarItem.image = [UIImage imageNamed:@"tb3"];
    self.view.backgroundColor = [UIColor whiteColor];
    
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 50, self.view.frame.size.width, 300)];
    _scrollView.contentSize = CGSizeMake((self.view.frame.size.width)*6, 300);
    _scrollView.pagingEnabled = YES;
    _scrollView.bounces = NO;
    _scrollView.showsVerticalScrollIndicator = NO;
    _scrollView.showsHorizontalScrollIndicator = NO;
    [self.view addSubview:_scrollView];
    
    for (int i = 0; i < 6; i++)
    {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake((self.view.frame.size.width)*i, 50, self.view.frame.size.width, 300)];
        imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"cycle_image%d",i+1]];
        imageView.contentMode = UIViewContentModeScaleToFill;
        [_scrollView addSubview:imageView];
    }
    
    _pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 310, self.view.frame.size.width, 30)];
    _pageControl.pageIndicatorTintColor = [UIColor grayColor];
    _pageControl.currentPageIndicatorTintColor = [UIColor whiteColor];
    _pageControl.numberOfPages = 6;
    _pageControl.currentPage = 0;
    [_pageControl addTarget:self action:@selector(onChangePage) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:_pageControl];
    self.pageControl.numberOfPages = [self.pageControl.subviews count];
    
    self.scrollView.delegate = self;
    
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:0.6f target:self selector:@selector(nextPage) userInfo:nil repeats:YES];
    
    
    
    
}

- (void)onChangePage
{
    [_pageControl setCurrentPage:self.pageControl.currentPage];
}


- (void)nextPage
{
    [UIView animateWithDuration:0.3f animations:^{self.scrollView.contentOffset = CGPointMake(self.scrollView.frame.size.width *((++self.pageControl.currentPage)% 6), 0.f);}];
}

- (void) scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat OffsetX = self.scrollView.contentOffset.x;
    int pageNumber = (OffsetX + 0.5 *self.scrollView.frame.size.width) / self.scrollView.frame.size.width;
    NSLog (@"%d", pageNumber);
    self.pageControl.currentPage = pageNumber;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
