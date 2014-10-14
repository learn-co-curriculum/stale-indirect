//
//  FISCart.m
//  stale-indirect
//
//  Created by Joe Burgess on 10/14/14.
//  Copyright (c) 2014 The Flatiron School. All rights reserved.
//

#import "FISCart.h"
#import "FISItem.h"

@implementation FISCart

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _items = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (CGFloat)total
{
    CGFloat sum = 0;
    for (FISItem *item in self.items) {
        NSInteger numOfItems = [self.items[item] integerValue];
        sum += (numOfItems * item.price);
    }
}
@end
