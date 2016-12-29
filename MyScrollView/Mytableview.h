//
//  Mytableview.h
//  MyScrollView
//
//  Created by 张雄勃 on 2016/12/28.
//  Copyright © 2016年 lzm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Mytableview : UITableView
{
    int nIndex;
}


- (instancetype)initWithIndex:(int)index;

@end
