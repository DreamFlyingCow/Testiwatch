//
//  TTInterfaceController.m
//  JustTrying
//
//  Created by 赵春浩 on 16/12/8.
//  Copyright © 2016年 Mr Zhao. All rights reserved.
//

#import "TTInterfaceController.h"
#import "TTTableView.h"

@interface TTInterfaceController ()
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceTable *tableView;

@end

/*
 
 - (void)setRowTypes:(NSArray<NSString*> *)rowTypes;                                         // row names. size of array is number of rows
 - (void)setNumberOfRows:(NSInteger)numberOfRows withRowType:(NSString *)rowType; // repeating row name
 
 @property(nonatomic,readonly) NSInteger numberOfRows;
 - (nullable id)rowControllerAtIndex:(NSInteger)index;
 
 - (void)insertRowsAtIndexes:(NSIndexSet *)rows withRowType:(NSString *)rowType;
 - (void)removeRowsAtIndexes:(NSIndexSet *)rows;
 
 - (void)scrollToRowAtIndex:(NSInteger)index;
 
 */


@implementation TTInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    [self setTitle:@"我好"];
    NSLog(@"%@", context);
//    self.tableView setRowTypes:<#(nonnull NSArray<NSString *> *)#>
    NSDictionary *dataDic = @{@"11" : @"22", @"22" : @"33", @"33" : @"44", @"44" : @"55", @"55" : @"66", @"66" : @"77", @"77" : @"88", @"88" : @"99"};
    // 设置tableView的cell个数(numberOfRows)
    [self.tableView setNumberOfRows:dataDic.count withRowType:@"table"];
    NSArray *titles = [dataDic allKeys];
    // 遍历设置数据
    for (int i = 0; i < dataDic.count; i ++) {
        TTTableView *table = [self.tableView rowControllerAtIndex:i];
        [table.labelOne setText:titles[i]];
        [table.labelTwo setText:dataDic[titles[i]]];
    }
    
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    
    
}

// 相当于cell的点击事件
- (void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex {
    
    
    NSLog(@"%d", rowIndex);
}


- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



