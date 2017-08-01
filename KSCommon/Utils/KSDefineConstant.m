//
//  YSDefineConstant.m
//  YSUniv
//
//  Created by beijinanji90 on 15/11/16.
//  Copyright © 2015年 weidian. All rights reserved.
//

#import "KSDefineConstant.h"
#import "NSString+KS.h"

NSString *EncodeStringFromDic(NSDictionary *dic, NSString *key)
{
    if (![dic isKindOfClass:[NSDictionary class]]) {
        return @"";
    }
    id temp = [dic objectForKey:key];
    if ([temp isKindOfClass:[NSString class]])
    {
        return temp;
    }
    else if ([temp isKindOfClass:[NSNumber class]])
    {
        return [temp stringValue];
    }
    return @"";
}

NSNumber *EncodeNumberFromDic(NSDictionary *dic, NSString *key)
{
    if (![dic isKindOfClass:[NSDictionary class]]) {
        return nil;
    }
    id temp = [dic objectForKey:key];
    if ([temp isKindOfClass:[NSString class]])
    {
        return [NSNumber numberWithDouble:[temp doubleValue]];
    }
    else if ([temp isKindOfClass:[NSNumber class]])
    {
        return temp;
    }
    return nil;
}

NSDictionary *EncodeDicFromDic(NSDictionary *dic, NSString *key)
{
    if (![dic isKindOfClass:[NSDictionary class]]) {
        return [NSDictionary dictionary];
    }
    id temp = [dic objectForKey:key];
    if ([temp isKindOfClass:[NSDictionary class]])
    {
        return temp;
    }
    return [NSDictionary dictionary];
}

NSArray *EncodeArrayFromDic(NSDictionary *dic, NSString *key)
{
    if (![dic isKindOfClass:[NSDictionary class]]) {
        return [NSArray array];
    }
    id temp = [dic objectForKey:key];
    if ([temp isKindOfClass:[NSArray class]])
    {
        return temp;
    }
    return [NSArray array];
}

NSArray *EncodeArrayFromDicUsingParseBlock(NSDictionary *dic, NSString *key, id(^parseBlock)(NSDictionary *innerDic))
{
    if (![dic isKindOfClass:[NSDictionary class]]) {
        return [NSArray array];
    }
    NSArray *tempList = EncodeArrayFromDic(dic, key);
    if ([tempList count])
    {
        NSMutableArray *array = [NSMutableArray arrayWithCapacity:[tempList count]];
        for (NSDictionary *item in tempList)
        {
            id dto = parseBlock(item);
            if (dto) {
                [array addObject:dto];
            }
        }
        return array;
    }
    return [NSArray array];
}

NSString *EncodePriceStringFromDic(NSDictionary *dic, NSString *key)
{
    NSString *priceString = EncodeStringFromDic(dic, key);
    if (ISStringEmpty(priceString)) {
        return @"";
    }
    else
    {
        long long priceValue = [priceString longLongValue];
        priceString = [NSString stringWithFormat:@"%lld",priceValue];
    }
    return priceString;
}

@implementation KSDefineConstant

@end
