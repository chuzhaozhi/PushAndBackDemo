//
//  UIViewController+BackToViewController.m
//  PushDemo
//
//  Created by chuzhaozhi on 2018/8/6.
//  Copyright © 2018年 JackerooChu. All rights reserved.
//

#import "UIViewController+BackToViewController.h"

@implementation UIViewController (BackToViewController)
-(void)backToController:(NSString *)controllerName animated:(BOOL)animaed{
    if (self.navigationController) {
        NSArray *controllers = self.navigationController.viewControllers;
        NSArray *result = [controllers filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^BOOL(id  _Nullable evaluatedObject, NSDictionary<NSString *,id> * _Nullable bindings) {
            return [evaluatedObject isKindOfClass:NSClassFromString(controllerName)];
        }]];
        if (result.count > 0) {
            [self.navigationController popToViewController:result[0] animated:YES];
        }
    }
}
@end
