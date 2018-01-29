//
//  CSXWaterLoadView.h
//  CSWaterLoadView
//
//  Created by CSX on 2018/1/25.
//  Copyright © 2018年 宗盛商业. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CSXWaterLoadView : UIView
//波动的速度，默认是6.0；
@property (assign, nonatomic) CGFloat speed;
//波动的高度，默认为6.0；
@property (assign, nonatomic) CGFloat waveHeight;
//波浪的数目，默认为2个；
@property (assign, nonatomic) CGFloat waveNum;
//波浪的高度，范围0～1，默认剧中0.5显示。
@property (assign, nonatomic) CGFloat _h;

- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title font:(UIFont *)font showLoadNote:(BOOL)show;

- (void)wave;

- (void)stopWave;

@end
