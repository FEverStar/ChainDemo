//
//  ViewController.m
//  ChainDemo
//
//  Created by LYX on 16/9/5.
//  Copyright © 2016年 LYX. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];




}


- (IBAction)test:(id)sender {
    Calculator *calc = [[Calculator alloc]init];
    
    calc.result = 1;
    
    calc.add(2).minus(1).multiply(5).divide(1);
    
    NSLog(@"result = %@", @(calc.result));
    
    NSLog(@"test = %@", @(calc.test(3)));
}

@end
