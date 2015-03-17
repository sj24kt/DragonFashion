//
//  ClothingDetailViewController.m
//  DragonFashion
//
//  Created by Sherrie Jones on 3/17/15.
//  Copyright (c) 2015 Sherrie Jones. All rights reserved.
//

#import "ClothingDetailViewController.h"

@interface ClothingDetailViewController ()
@property (strong, nonatomic) IBOutlet UILabel *clothingLabel;

@end

@implementation ClothingDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // dragons name & sigClothingItem defined in Dragon.h
    self.clothingLabel.text = self.dragon.signatureClothingItem;

}


@end
