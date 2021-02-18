//
//  CTMediator+A.m
//  A
//
//  Created by casa on 2020/3/9.
//  Copyright © 2020 casa. All rights reserved.
//

#import "CTMediator+A.h"

@implementation CTMediator (A)

- (NSString *)A_test
{
    NSString *result = (NSString *)[self performTarget:@"A" action:@"test" params:nil shouldCacheTarget:NO];
    return result;
}

@end
