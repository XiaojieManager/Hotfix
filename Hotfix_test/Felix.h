//
//  Felix.h
//  Hotfix_test
//
//  Created by 赵肖杰 on 2018/6/27.
//  Copyright © 2018年 赵肖杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Aspects.h>
#import <objc/runtime.h>
#import <JavaScriptCore/JavaScriptCore.h>

@interface Felix : NSObject
+ (void)fixIt;
+ (void)evalString:(NSString *)javascriptString;
@end
