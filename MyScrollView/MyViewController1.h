//
//  MyViewController1.h
//  MyScrollView
//
//  Created by 刘刘智明 on 16/6/28.
//  Copyright © 2016年 lzm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyViewController1 : UIViewController
{
    int nIndex;
}


@property (strong, nonatomic) IBOutlet UILabel *label;

- (instancetype)initWithIndex:(int)index;

@end
