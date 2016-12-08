//
//  InterfaceController.m
//  JustTrying WatchKit Extension
//
//  Created by 赵春浩 on 16/12/7.
//  Copyright © 2016年 Mr Zhao. All rights reserved.
//

#import "InterfaceController.h"
#import "TTInterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

//这个函数在初始化界面时会触发，通过context可以实现界面的传值
- (void)awakeWithContext:(id)context {
    
    [super awakeWithContext:context];
    [self setTitle:@"你好"];
    
}

- (IBAction)didBtnClick {
    
    
    [self pushControllerWithName:@"TTSecondVC" context:@"这只是一个测试"];
    
    
    
}

- (id)contextForSegueWithIdentifier:(NSString *)segueIdentifier {
    
    return @"这只是一个测试1111";
}



//这个函数在界面即将展现时触发 类似于iOS中的ViewWillApear
- (void)willActivate {
    
    [super willActivate];
    
}

//这个函数在界面消失后触发，类似于iOS中的ViewDidDisAppear
- (void)didDeactivate {
    
    [super didDeactivate];
}

@end



