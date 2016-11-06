//
//  JCTagCell.m
//  JCTagListView
//
//  Created by 李京城 on 15/7/3.
//  Copyright (c) 2015年 李京城. All rights reserved.
//

#import "JCTagCell.h"

@implementation JCTagCell

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.layer.borderWidth = 1.0f;
        self.layer.cornerRadius = 5.0f;
        self.layer.masksToBounds = YES;
        
        _backImage = [[UIImageView alloc]initWithFrame:self.bounds];
        [self.contentView addSubview:_backImage];
        
        _iconImage = [[UIButton alloc] initWithFrame:CGRectMake(2 ,0 , 28, 28)];
        _iconImage.userInteractionEnabled = NO;
        
        
        [_backImage addSubview:_iconImage];

        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(_iconImage.frame.size.width,self.bounds.origin.y, self.bounds.size.width-_iconImage.frame.size.width, self.bounds.size.height)];
        _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.font = [UIFont systemFontOfSize:14.0f];
        [_backImage addSubview:_titleLabel];
        
        [_backImage setImage:[UIImage imageNamed:@"TobBackL"]];
//        [self.contentView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"TobBackL"]]];
//        
//        [self.contentView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"TobBackR"]]];
//        self.layer.borderColor = [Tools colorWithHexString:@"#e0e0e0" andAlpha:1].CGColor;
    }
    
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    if (_isLeft) {
        self.titleLabel.frame = CGRectMake(_iconImage.frame.size.width,self.bounds.origin.y, self.bounds.size.width-_iconImage.frame.size.width -2, self.bounds.size.height);
    }
    else
    {
        self.titleLabel.frame = CGRectMake(_iconImage.frame.size.width,self.bounds.origin.y, self.bounds.size.width-_iconImage.frame.size.width -2, self.bounds.size.height);
    }
    
}

- (void)prepareForReuse
{
    [super prepareForReuse];
    
    self.titleLabel.text = @"";
}

@end
