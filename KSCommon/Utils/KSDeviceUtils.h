//
//  YSDeviceConstant.h
//  YSCommon
//
//  Created by beijinanji90 on 15/11/19.
//  Copyright © 2015年 weidian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KSDeviceUtils : NSObject

+ (NSMutableDictionary *)deviceInfo;

//获取运行商的名称
+ (NSString *)carrierInfo;

+ (BOOL)isWIFI;

//当前网络类型
+ (NSString *)netConnectType;

//获得设备型号
+ (NSString *)getCurrentDeviceModel;

//软件版本
+ (NSString *)appVersion;

//内部版本号
+ (NSString *)budlerVersion;

@end
