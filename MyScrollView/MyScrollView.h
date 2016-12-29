//
//  MyScrollView.h
//  MyScrollView
//
//  Created by 刘刘智明 on 16/6/28.
//  Copyright © 2016年 lzm. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MySegementView.h"

@interface MyScrollView : UIView<UIScrollViewDelegate>

- (instancetype) initWithFrame:(CGRect)frame titleArray:(NSArray *)titleArray viewArray:(NSArray *)viewArray;

//滚动页面
@property (strong, nonatomic)UIScrollView *myScrollView;

//顶部标签按钮滚动视图
@property (strong, nonatomic)MySegementView *mySegementView;

@end
