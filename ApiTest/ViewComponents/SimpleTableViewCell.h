//
//  SimpleTableViewCell.h
//  ApiTest
//
//  Created by Eleven Chen on 15/4/22.
//  Copyright (c) 2015年 Eleven. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *timeLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;

@end
