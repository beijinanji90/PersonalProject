//
//  ALAsset+YS.m
//  YSCommon
//
//  Created by beijinanji90 on 15/11/18.
//  Copyright © 2015年 weidian. All rights reserved.
//

#import "ALAsset+KS.h"

@implementation ALAsset (KS)

- (BOOL)isALAssetEqual:(ALAsset *)alsset
{
    if (![self isKindOfClass:[ALAsset class]] || ![alsset isKindOfClass:[ALAsset class]]) {
        return NO;
    }
    NSString *currentSelectAssetURL = [[self valueForProperty:ALAssetPropertyAssetURL] absoluteString];
    NSString *assetURL = [[alsset valueForProperty:ALAssetPropertyAssetURL] absoluteString];
    
    if ([currentSelectAssetURL isEqualToString:assetURL]) {
        return YES;
    }
    return NO;
}

@end
