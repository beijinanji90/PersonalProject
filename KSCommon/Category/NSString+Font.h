//
//  NSString+Font.h
//  YSUniv
//
//  Created by beijinanji90 on 15/11/16.
//  Copyright © 2015年 weidian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

extern CGSize const YSStringSizeWithString(NSString *string,UIFont *font,CGFloat width,CGFloat height);

extern CGSize const YSStringSizeWithStringNonHeight(NSString *string,UIFont *font,CGFloat width);

extern CGSize const YSStringSizeWithStringAttribute(NSString *string,NSMutableDictionary *itemAttrs,CGFloat width);

@interface NSString (Font)

//- (CGSize)stringSizeWithFont:(UIFont *)font limitWidth:(CGFloat)width limitHeight:(CGFloat)height;
//
//- (CGSize)stringSizeWithFont:(UIFont *)font limitWidth:(CGFloat)width;

@end
