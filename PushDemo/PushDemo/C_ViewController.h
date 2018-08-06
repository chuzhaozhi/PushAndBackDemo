//
//  C_ViewController.h
//  PushDemo
//
//  Created by chuzhaozhi on 2018/8/6.
//  Copyright © 2018年 JackerooChu. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^backBlock)(void);     

@interface C_ViewController : UIViewController
@property (copy,nonatomic)backBlock backBlock;

@end
