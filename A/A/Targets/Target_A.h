//
//  Target_A.h
//  A
//
//  Created by 于鸿鹏 on 2021/2/7.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/// 对应着A_Category里面有performTarget:@"A"

@interface Target_A : NSObject

- (UIViewController *)Action_viewController:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
