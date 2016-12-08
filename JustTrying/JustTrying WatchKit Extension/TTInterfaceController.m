//
//  TTInterfaceController.m
//  JustTrying
//
//  Created by 赵春浩 on 16/12/8.
//  Copyright © 2016年 Mr Zhao. All rights reserved.
//

#import "TTInterfaceController.h"

@interface TTInterfaceController ()

@end

@implementation TTInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    [self setTitle:@"我好"];
    NSLog(@"%@", context);
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    
    
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



