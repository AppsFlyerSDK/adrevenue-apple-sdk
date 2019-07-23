//
//  MPNativeCollectionViewAdCollectionViewCell.m
//
//  Copyright 2018-2019 Twitter, Inc.
//  Licensed under the MoPub SDK License Agreement
//  http://www.mopub.com/legal/sdk-license-agreement/
//

#import "MPNativeCollectionViewAdCollectionViewCell.h"

@implementation MPNativeCollectionViewAdCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(2, 0, 61, 24)];
        [self.titleLabel setFont:[UIFont boldSystemFontOfSize:16.0f]];
        [self.titleLabel setText:@"Title"];
        [self addSubview:self.titleLabel];

        self.iconImageView = [[UIImageView alloc] initWithFrame:CGRectMake(5, 30, 60, 60)];
        [self.iconImageView setClipsToBounds:YES];
        [self.iconImageView setContentMode:UIViewContentModeScaleAspectFill];
        [self addSubview:self.iconImageView];

        self.DAAIconImageView = [[UIImageView alloc] initWithFrame:CGRectMake(60, 5, 8, 8)];
        [self addSubview:self.DAAIconImageView];

        self.ctaLabel = [[UILabel alloc] initWithFrame:CGRectMake(2, 99, 66, 10)];
        [self.ctaLabel setFont:[UIFont systemFontOfSize:10.0f]];
        [self.ctaLabel setText:@"CTA Text"];
        [self.ctaLabel setTextColor:[UIColor greenColor]];
        [self.ctaLabel setTextAlignment:NSTextAlignmentRight];
        [self addSubview:self.ctaLabel];

        self.backgroundColor = [UIColor colorWithWhite:0.21 alpha:1.0f];
        self.titleLabel.textColor = [UIColor colorWithWhite:0.86 alpha:1.0f];
    }
    return self;
}

#pragma mark - <MPNativeAdRendering>

- (UILabel *)nativeTitleTextLabel
{
    return self.titleLabel;
}

- (UILabel *)nativeCtaTextLabel
{
    return self.ctaLabel;
}

- (UIImageView *)nativeIconImageView
{
    return self.iconImageView;
}

@end
