//
//  LDLTableViewCell.m
//  ExtraCellSelection
//
//  Created by Brock Boland on 4/16/14.
//  Copyright (c) 2014 Lucky Dog Labs. All rights reserved.
//

#import "LDLTableViewCell.h"

@implementation LDLTableViewCell


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
  [super setSelected:selected animated:animated];

  // NOTE: All cells are set to NOT selected on app launch, but this isn't called when the collection view cell is selected. It is called normally when the table view cell is selected.
  if (selected) {
    NSLog(@"Setting table view cell selected. Label: %@", self.textLabel.text);
  }
  else {
    NSLog(@"Setting table view cell UNselected. Label: %@", self.textLabel.text);
  }
}

@end
