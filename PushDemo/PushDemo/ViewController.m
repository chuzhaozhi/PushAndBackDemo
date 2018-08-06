//
//  ViewController.m
//  PushDemo
//
//  Created by chuzhaozhi on 2018/8/6.
//  Copyright © 2018年 JackerooChu. All rights reserved.
//

#import "ViewController.h"
#import "B_ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"AVC";
    self.view.backgroundColor = [UIColor cyanColor];
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.navigationController pushViewController:[[B_ViewController alloc] init] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
