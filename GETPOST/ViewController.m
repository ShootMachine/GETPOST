//
//  ViewController.m
//  Demo
//
//  Created by 林柏参 on 14/10/21.
//  Copyright (c) 2014年 林柏参. All rights reserved.
//

#import "ViewController.h"
#import "BaseHttpTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /**
     *  带缓存的get请求   需要导入 sql 框架
     */
    NSString *url = @"www.xxx.com";
    
    [BaseHttpTool getCacheWithUrl:url parameters:nil sucess:^(NSDictionary *json) {
        
        NSLog(@"json - %@",json);
        
    } failur:^(NSError *error) {
        
        NSLog(@"error - %@",[error description]);
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
