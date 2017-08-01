//
//  UIImage+YS.h
//  YSUniv
//
//  Created by beijinanji90 on 15/11/16.
//  Copyright © 2015年 weidian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (KS)

/**
 *  返回一张自由拉伸的图片
 */
+ (UIImage *)resizedImageWithName:(NSString *)name;
+ (UIImage *)resizedImageWithImage:(UIImage *)image;
+ (UIImage *)resizedImageWithName:(NSString *)name left:(CGFloat)left top:(CGFloat)top;

/**
 *  创建一个纯色的image
 */
+ (UIImage *)imageWithColor:(UIColor *)color;

//画一个圆
+ (UIImage *)circleImageWithColor:(UIColor *)color withRect:(CGRect)rect;

- (UIImage *)addImage:(UIImage *)image1 inrect:(CGRect)rect;


@end
