//
//  YSDefineConstant.h
//  YSUniv
//
//  Created by beijinanji90 on 15/11/16.
//  Copyright © 2015年 weidian. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *EncodeStringFromDic(NSDictionary *dic, NSString *key);
extern NSNumber *EncodeNumberFromDic(NSDictionary *dic, NSString *key);
extern NSDictionary *EncodeDicFromDic(NSDictionary *dic, NSString *key);
extern NSArray *EncodeArrayFromDic(NSDictionary *dic, NSString *key);
extern NSArray *EncodeArrayFromDicUsingParseBlock(NSDictionary *dic, NSString *key, id(^parseBlock)(NSDictionary *innerDic));
extern NSString *EncodePriceStringFromDic(NSDictionary *dic, NSString *key);

@interface KSDefineUtils : NSObject

@end
