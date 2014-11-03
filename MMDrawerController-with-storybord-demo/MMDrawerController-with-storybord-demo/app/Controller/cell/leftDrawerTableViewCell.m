//
//  leftDrawerTableViewCell.m
//  MMDrawerController-with-storybord-demo
//
//  Created by harveyliu on 11/3/14.
//  Copyright (c) 2014 com.wenzizone. All rights reserved.
//

#import "leftDrawerTableViewCell.h"

@implementation leftDrawerTableViewCell

@synthesize lbTableRow;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)prepareForReuse
{
    [super prepareForReuse];
    self.lbTableRow.text = nil;
}

@end
