//
//  Dragon.h
//  DragonFashion
//
//  Created by Sherrie Jones on 3/17/15.
//  Copyright (c) 2015 Sherrie Jones. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dragon : NSObject
@property NSString *fullName;
@property NSString *signatureClothingItem;

// create a custom initializer of a dragon with one line of code - returns instance of a dragon
- (instancetype)initWithFullname:(NSString *)name andClothingItem:(NSString *)clothingItem;

@end
