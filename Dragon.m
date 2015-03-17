//
//  Dragon.m
//  DragonFashion
//
//  Created by Sherrie Jones on 3/17/15.
//  Copyright (c) 2015 Sherrie Jones. All rights reserved.
//

#import "Dragon.h"

@implementation Dragon

- (instancetype)initWithFullname:(NSString *)name andClothingItem:(NSString *)clothingItem {
    self = [super init];
    // ensuring that self exists before setting properties on self
    if (self) {
        self.fullName = name;
        self.signatureClothingItem = clothingItem;
    }

    return self;
}


@end
