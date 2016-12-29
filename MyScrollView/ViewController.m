//
//  ViewController.m
//  MyScrollView
//
//  Created by 刘刘智明 on 16/6/28.
//  Copyright © 2016年 lzm. All rights reserved.
//

#import "ViewController.h"
#import "MyViewController1.h"
#import "Mytableview.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    Mytableview *tab;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *arrayssss =@[@"第1页",@"第2页",@"第3页",@"第4页",@"第5页",@"第6页",@"第7页",@"第8页",@"第9页",@"第10页",@"第11页",@"第12页"] ;
    NSMutableArray *array=[NSMutableArray array];//显示的标签页
    for (int i = 0; i < arrayssss.count; i++) {
//            MyViewController1 *viewController1 = [[MyViewController1 alloc] initWithIndex:i + 1];//initWithIndex : 自定义的构造方法，用于显示页面编号
//            [array addObject:viewController1];//滚动视图列表
         tab= [[Mytableview alloc]initWithIndex:i+1];
        tab.tag = 100+i;
        tab.delegate =self;
        tab.dataSource =self;
        
        [array addObject:tab];
    }
    myScrollView = [[MyScrollView alloc] initWithFrame:self.view.frame titleArray:arrayssss viewArray:array];
    
    [self.view addSubview:myScrollView];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (tableView.tag==100) {
        return 1;
    }else if (tableView.tag ==101){
        return 2;
    }else{
        return 4;
    }
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tab dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        
    }
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (tableView.tag == 100) {
        return 100;
    }else{
        return 50;
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
