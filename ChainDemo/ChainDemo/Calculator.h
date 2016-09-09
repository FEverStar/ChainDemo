//
//  Calculator.h
//  ChainDemo
//
//  Created by LYX on 16/9/5.
//  Copyright © 2016年 LYX. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property (nonatomic, assign) NSInteger result;
//@property (nonatomic, copy, readonly) Calculator *(^add)(NSInteger num);
//@property (nonatomic, copy, readonly) Calculator *(^minus)(NSInteger num);
//@property (nonatomic, copy, readonly) Calculator *(^multiply)(NSInteger num);
//@property (nonatomic, copy, readonly) Calculator *(^divide)(NSInteger num);


//改进:直接声明方法，不需声明属性
- (Calculator *(^)(NSInteger))add;
- (Calculator *(^)(NSInteger))minus;
- (Calculator *(^)(NSInteger))multiply;
- (Calculator *(^)(NSInteger))divide;
- (NSInteger(^)(NSInteger))test;
@end
