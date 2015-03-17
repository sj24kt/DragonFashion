//
//  RootViewController.m
//  DragonFashion
//
//  Created by Sherrie Jones on 3/17/15.
//  Copyright (c) 2015 Sherrie Jones. All rights reserved.
//

#import "RootViewController.h"
#import "Dragon.h"
#import "ClothingDetailViewController.h"

@interface RootViewController () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property NSArray *dragons;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Dragon *dragonOne = [[Dragon alloc] initWithFullname:@"Smaug" andClothingItem:@"High Heels"];
    Dragon *dragonTwo = [[Dragon alloc] initWithFullname:@"Spiro" andClothingItem:@"Pocket Protector"];
    Dragon *dragonThree = [[Dragon alloc] initWithFullname:@"Drake" andClothingItem:@"Weird Glasses"];
    Dragon *dragonFour = [[Dragon alloc] initWithFullname:@"Ben" andClothingItem:@"Beard"];

    self.dragons = [NSArray arrayWithObjects:dragonOne, dragonTwo, dragonThree, dragonFour, nil];

    // fast enumeration
    for (Dragon *dragon in self.dragons) {
        NSLog(@"dragon: %@...clothing: %@", dragon.fullName, dragon.signatureClothingItem);

    }
//    dragonOne.fullName = @"Smaug";  // fullname define in Dragon class .h
//    dragonOne.signatureClothingItem = @"High Heels";
//    Dragon *dragonTwo = [Dragon new];
//    dragonTwo.fullName = @"Spiro";
//    dragonTwo.signatureClothingItem = @"Pocket Protector";
//    self.dragons = [NSArray arrayWithObjects:dragonOne, dragonTwo, nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dragons.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DragonCell"];
    Dragon *dragon = [self.dragons objectAtIndex:indexPath.row]; // creates a dragon w/custom initializer
    cell.textLabel.text = [[self.dragons objectAtIndex:indexPath.row] fullName];  // set the dragon's name on row
    cell.detailTextLabel.text = dragon.signatureClothingItem; // in SB set the Style subtitle on the cell
    cell.detailTextLabel.text = [[self.dragons objectAtIndex:indexPath.row] signatureClothingItem];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UITableViewCell *)cell {
    NSIndexPath *indexPath = [self.tableView indexPathForCell:cell]; // get indexPath on cell
    Dragon *dragon = [self.dragons objectAtIndex:indexPath.row]; // create a dragon
    ClothingDetailViewController *clothingDetailVC = segue.destinationViewController;
    clothingDetailVC.dragon = dragon; // send dragon to new ClothingDetailVC
    clothingDetailVC.title = dragon.fullName; // send dragon name to new ClothingDetailVC
}

@end

























