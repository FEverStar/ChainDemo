//
//  Calculator.m
//  ChainDemo
//
//  Created by LYX on 16/9/5.
//  Copyright © 2016年 LYX. All rights reserved.
//

#import "Calculator.h"


@implementation Calculator
- (instancetype)init
{
    self = [super init];
    if (!self) {
        return nil;
    }
    self.result = 0;
    return self;
}

- (Calculator *(^)(NSInteger))add{
    return ^id(NSInteger num){
        self.result += num;
        return self;
    };
    
}

- (Calculator *(^)(NSInteger))minus{
    return ^id(NSInteger num){
        self.result -= num;
        return self;
    };
}

- (Calculator *(^)(NSInteger))multiply{
    return ^id(NSInteger num){
        self.result *= num;
        return self;
    };
}

- (Calculator *(^)(NSInteger))divide{
    return ^id(NSInteger num){
        NSAssert(num != 0, @"除数不能为0！");
        self.result /= num;
        return self;
    };
}

- (NSInteger(^)(NSInteger))test{
    return ^NSInteger(NSInteger num){

        return num;
    };
}

@end
