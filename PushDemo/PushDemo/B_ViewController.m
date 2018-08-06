//
//  B_ViewController.m
//  PushDemo
//
//  Created by chuzhaozhi on 2018/8/6.
//  Copyright © 2018年 JackerooChu. All rights reserved.
//

#import "B_ViewController.h"
#import "C_ViewController.h"

@interface B_ViewController ()

@end

@implementation B_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =[UIColor redColor];
    self.title = @"BVC";
    // Do any additional setup after loading the view.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    C_ViewController *cViewController = [[C_ViewController alloc] init];
    
    //  方法二
    NSMutableArray *arrM = [[NSMutableArray alloc] initWithArray:self.navigationController.viewControllers];
    [arrM replaceObjectAtIndex:[arrM count]-1 withObject:cViewController];
    [self.navigationController setViewControllers:arrM animated:YES];
   
//    [self.navigationController pushViewController:cViewController animated:YES];
    
    //  方法一
//    cViewController.backBlock = ^{
//        [self.navigationController popViewControllerAnimated:YES];
//    };
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
