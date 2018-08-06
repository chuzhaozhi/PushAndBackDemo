//
//  C_ViewController.m
//  PushDemo
//
//  Created by chuzhaozhi on 2018/8/6.
//  Copyright © 2018年 JackerooChu. All rights reserved.
//

#import "C_ViewController.h"
#import "UIViewController+BackToViewController.h"
@interface C_ViewController ()

@end

@implementation C_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"CVC";
    self.view.backgroundColor = [UIColor yellowColor];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back"] style:(UIBarButtonItemStyleDone) target:self action:@selector(back)];

    // Do any additional setup after loading the view.
}
//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [self backToController:@"ViewController" animated:YES];
//}
-(void)back
{


    //  方法一
//    if (self.backBlock) {
//        [self.navigationController popViewControllerAnimated:YES];
//        self.backBlock();
//
//    }
    
    //  方法二
//    [self.navigationController popViewControllerAnimated:YES];
    
    // 方法三
        if(self.navigationController.viewControllers.count <= 1)
        {
            [self dismissViewControllerAnimated:YES completion:nil];
        }
        else
        {
            [self backToController:@"ViewController" animated:YES];
        }
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
