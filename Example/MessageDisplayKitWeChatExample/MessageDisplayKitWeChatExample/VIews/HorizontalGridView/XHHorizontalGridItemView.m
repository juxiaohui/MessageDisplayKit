
//
//  XHHorizontalGridItemView.m
//  MessageDisplayExample
//
//  Created by 曾 宪华 on 14-5-31.
//  Copyright (c) 2014年 嗨，我是曾宪华(@xhzengAIB)，曾加入YY Inc.担任高级移动开发工程师，拍立秀App联合创始人，热衷于简洁、而富有理性的事物 QQ:543413507 主页:http://zengxianhua.com All rights reserved.
//

#import "XHHorizontalGridItemView.h"

@interface XHHorizontalGridItemView ()

@property (nonatomic, strong) UIImageView *imageView;

@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, strong) UILabel *subtitleLabel;

@end

@implementation XHHorizontalGridItemView

#pragma mark - Propertys

- (void)setGridItem:(XHHorizontalGridItem *)gridItem {
    _gridItem = gridItem;
    self.imageView.image = gridItem.image;
    self.titleLabel.text = gridItem.title;
    self.subtitleLabel.text = gridItem.subtitle;
}

- (UIImageView *)imageView {
    if (!_imageView) {
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
    }
    return _imageView;
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.imageView.frame), CGRectGetWidth(self.imageView.frame), 20)];
        _titleLabel.font = [UIFont boldSystemFontOfSize:14];
        _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _titleLabel;
}

- (UILabel *)subtitleLabel {
    if (!_subtitleLabel) {
        _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.titleLabel.frame), CGRectGetWidth(self.imageView.frame), 12)];
        _subtitleLabel.font = [UIFont boldSystemFontOfSize:12];
        _subtitleLabel.textColor = [UIColor grayColor];
        _subtitleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _subtitleLabel;
}

#pragma mark - Life Cycle

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self addSubview:self.imageView];
        [self addSubview:self.titleLabel];
        [self addSubview:self.subtitleLabel];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
