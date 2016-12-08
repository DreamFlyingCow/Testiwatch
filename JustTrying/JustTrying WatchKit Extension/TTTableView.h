//
//  TTTableView.h
//  JustTrying
//
//  Created by 赵春浩 on 16/12/8.
//  Copyright © 2016年 Mr Zhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WatchKit/WatchKit.h>

@interface TTTableView : NSObject
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *labelOne;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *labelTwo;

@end
