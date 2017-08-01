//
//  NSString+Font.m
//  YSUniv
//
//  Created by beijinanji90 on 15/11/16.
//  Copyright © 2015年 weidian. All rights reserved.
//

#import "NSString+Font.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "NSString+KS.h"

CGSize const YSStringSizeWithString(NSString *string,UIFont *font,CGFloat width,CGFloat height)
{
    //先检查参数
    NSString *tempString = ISStringEmpty(string) ? @"" : string;
    UIFont *tempFont = font == nil ? [UIFont systemFontOfSize:14] : font;
    
    //设置计算的参数
    NSStringDrawingOptions options =  NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading;
    
    //字体
    NSMutableDictionary *itemAttrs = [NSMutableDictionary dictionary];
    itemAttrs[NSFontAttributeName] = tempFont;
    
    //最大的Size
    CGSize size = CGSizeMake(width, height);
    CGSize textSize = [tempString boundingRectWithSize:size options:options attributes:itemAttrs context:nil].size;
    
    return textSize;
}

CGSize const YSStringSizeWithStringNonHeight(NSString *string,UIFont *font,CGFloat width)
{
    return YSStringSizeWithString(string, font, width, MAXFLOAT);
}

CGSize const YSStringSizeWithStringAttribute(NSString *string,NSMutableDictionary *itemAttrs,CGFloat width)
{
    //先检查参数
    NSString *tempString = ISStringEmpty(string) ? @"" : string;
    //设置计算的参数
    NSStringDrawingOptions options =  NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading;
    //最大的Size
    CGSize size = CGSizeMake(width, MAXFLOAT);
    
    if (!itemAttrs) {
        return CGSizeZero;
    }
    
    CGSize textSize = [tempString boundingRectWithSize:size options:options attributes:itemAttrs context:nil].size;
    
    return textSize;
}

@implementation NSString (Font)

//- (CGSize)stringSizeWithFont:(UIFont *)font limitWidth:(CGFloat)width
//{
//    return [self stringSizeWithFont:font limitWidth:width limitHeight:MAXFLOAT];
//}
//
//- (CGSize)stringSizeWithFont:(UIFont *)font limitWidth:(CGFloat)width limitHeight:(CGFloat)height
//{
//    NSLog(@"%@",NSStringFromClass([self class]));
//    //先检查参数
//    NSString *tempString = ISStringEmpty(self) ? @"" : self;
//    UIFont *tempFont = font == nil ? [UIFont systemFontOfSize:14] : font;
//    
//    //设置计算的参数
//    NSStringDrawingOptions options =  NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading;
//    
//    //字体
//    NSMutableDictionary *itemAttrs = [NSMutableDictionary dictionary];
//    itemAttrs[NSFontAttributeName] = tempFont;
//    
//    //最大的Size
//    CGSize size = CGSizeMake(width, height);
//    CGSize textSize = [tempString boundingRectWithSize:size options:options attributes:itemAttrs context:nil].size;
//    return textSize;
//}

@end
