//
//  MyViewController1.m
//  MyScrollView
//
//  Created by 刘刘智明 on 16/6/28.
//  Copyright © 2016年 lzm. All rights reserved.
//

#import "MyViewController1.h"

@interface MyViewController1 ()

@end

@implementation MyViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor grayColor]];
    NSString *str = [[NSString alloc] initWithFormat:@"第%d页",nIndex];
    _label.text = str;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (instancetype)initWithIndex:(int)index
{
    nIndex = index;
    self = [super init];
    return self;
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
