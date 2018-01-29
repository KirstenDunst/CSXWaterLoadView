//
//  CSXWaterLoadView.h
//  CSWaterLoadView
//
//  Created by CSX on 2018/1/25.
//  Copyright © 2018年 宗盛商业. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CSXWaterLoadView : UIView
@property (assign, nonatomic) CGFloat speed;
@property (assign, nonatomic) CGFloat waveHeight;
@property (assign, nonatomic) CGFloat waveNum;
@property (assign, nonatomic) CGFloat _h;

- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title font:(UIFont *)font showLoadNote:(BOOL)show;

- (void)wave;

- (void)stopWave;

@end
