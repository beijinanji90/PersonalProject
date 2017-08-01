//
//  YSLocalTextConstant.m
//  YSUniv
//
//  Created by beijinanji90 on 15/11/16.
//  Copyright © 2015年 weidian. All rights reserved.
//

#import "KSLocalTextUtils.h"

NSString *KSLocalString(NSString *key,NSString *defaultStr)
{
    return [KSLocalTextUtils systemLocalizedString:key defaultString:defaultStr];
}

/*
    *比较时，使用宏，防止由于ios系统升级，又出现不同比对方式
    *ios9与与ios9以前的比对方法就不一样
 */
#define IS_LANGUAGE_ENQUAL(sourceLanguage , compareLanguate) [sourceLanguage hasPrefix:compareLanguate]

@interface KSLocalTextUtils ()

@end

@implementation KSLocalTextUtils

+ (NSString *)currentLanguage
{
    NSArray *languages = [NSLocale preferredLanguages];
    NSString *currentLanguage = [languages objectAtIndex:0];
    if (currentLanguage && [currentLanguage isKindOfClass:[NSString class]]) {
        //系统语言如果是 简体中文 认为是中国大陆用户
        if(IS_LANGUAGE_ENQUAL(currentLanguage,@"zh-Hans"))
        {
            return @"zh-cn";
        }
        //系统语言如果是 简体中文 认为是中国大陆用户
        if(IS_LANGUAGE_ENQUAL(currentLanguage,@"id"))
        {
            return @"id";
        }
        return currentLanguage;
    }
    else {
        return @"id";
    }
}

+ (NSString *)systemLocalizedString:(NSString *)key defaultString:(NSString *)defaultString
{
    id value = [self DPLocalizedString:key];
    if (value && [value isKindOfClass:[NSString class]] && ![value isEqualToString:key])
    {
        return (NSString *)value;
    }
    else
    {
        //当value 值没找到时 使用英语 不能没有显示
        NSString * path = [[NSBundle mainBundle] pathForResource:@"id" ofType:@"lproj"];
        NSBundle * languageBundle = [NSBundle bundleWithPath:path];
        NSString *s = [languageBundle localizedStringForKey:key value:@"" table:nil];
        
        if([value isEqualToString:key])
        {
            return defaultString;
        }
        else
        {
            return s;
        }
    }
}

+ (NSString *)DPLocalizedString:(NSString *)translation_key
{
    
    NSString * s = NSLocalizedString(translation_key, nil);
    NSString *str = [NSString stringWithFormat:@"%@",([[NSLocale preferredLanguages] objectAtIndex:0])];
    
    //不支持用户选择的语言时 使用印尼语
    if (!IS_LANGUAGE_ENQUAL(str, @"zh-Hans") && !IS_LANGUAGE_ENQUAL(str, @"id"))
    {
        NSString * path = [[NSBundle mainBundle] pathForResource:@"id" ofType:@"lproj"];
        NSBundle * languageBundle = [NSBundle bundleWithPath:path];
        s = [languageBundle localizedStringForKey:translation_key value:@"" table:nil];
    }
    return s;
}

@end
