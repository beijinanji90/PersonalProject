//
//  NSString+YS.m
//  YSUniv
//
//  Created by beijinanji90 on 15/11/16.
//  Copyright © 2015年 weidian. All rights reserved.
//

#import "NSString+KS.h"

BOOL const ISStringEmpty(NSString *string)
{
    if ([string isKindOfClass:[NSString class]] || [string isKindOfClass:[NSNumber class]] )
    {
        //判断是否为NSString类型
        NSString *tempString = nil;
        if ([string isKindOfClass:[NSString class]])
        {
            tempString = string;
        }
        else if([string isKindOfClass:[NSNumber class]])
        {
            tempString = [NSString stringWithFormat:@"%@",string];
        }
        
        if (tempString.length == 0)
        {
            return YES;
        }
        else if ([tempString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]].length == 0) {
            return YES;
        }
        else if ([tempString stringByReplacingOccurrencesOfString:@" " withString:@""].length == 0) {
            return YES;
        }
        else
        {
            return NO;
        }
    }
    else
    {
        return YES;
    }
}

NSString* const TrimWitespaceCharacter(NSString *string)
{
    BOOL isEmpty = ISStringEmpty(string);
    if (isEmpty || [string isKindOfClass:[NSString class]] == NO)
    {
        return @"";
    }
    else
    {
        return [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    }
}

@implementation NSString (KS)


- (NSString *)trim
{
    if ([self isKindOfClass:[NSString class]]) {
        NSString *newString = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        return newString;
    }
    return self;
}

@end
