//
//  ViewController.m
//  Hotfix_test
//
//  Created by 赵肖杰 on 2018/6/27.
//  Copyright © 2018年 赵肖杰. All rights reserved.
//

#import "ViewController.h"
#import "MightyCrash.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    
    
    MightyCrash *mighty = [[MightyCrash alloc]init];
    [mighty divideUsingDenominator:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
