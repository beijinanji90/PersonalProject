//
//  YSLocalTextConstant.h
//  YSUniv
//
//  Created by beijinanji90 on 15/11/16.
//  Copyright © 2015年 weidian. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *KSLocalString(NSString *key,NSString *defaultStr);

@interface KSLocalTextUtils : NSObject

/*当前的系统语言*/
+ (NSString *)currentLanguage;

/*根据系统语言显示不同的字符串*/
+ (NSString *)systemLocalizedString:(NSString *)key defaultString:(NSString *)defaultString;

@end
