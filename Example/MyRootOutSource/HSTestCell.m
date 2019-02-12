//
//  HSTestCell.m
//  MyRootOutSource_Example
//
//  Created by hongsang on 2019/1/25.
//  Copyright © 2019年 ny8080. All rights reserved.
//

#import "HSTestCell.h"
#import "Masonry.h"
#import "HSTestItem.h"


@interface HSTestCell ()
@property (nonatomic, strong) UILabel *lab;

@end

@implementation HSTestCell

- (void)cellDidLoad {
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    [self.contentView addSubview:self.lab];
    [self.lab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(0));
    }];
}

+ (CGFloat)heightForCellWithItem:(DHTTableViewItem *)item {
    return 44;
}

- (void)configCellWithItem:(HSTestItem *)item {
    self.lab.text = item.name;
}

- (UILabel *)lab {
    if (_lab == nil) {
        _lab = [[UILabel alloc] init];
        _lab.font = [UIFont systemFontOfSize:15];
        _lab.textColor = [UIColor redColor];
    }
    
    return _lab;
}

@end
