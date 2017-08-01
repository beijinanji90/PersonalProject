//
//  YSDeviceConstant.m
//  YSCommon
//
//  Created by beijinanji90 on 15/11/19.
//  Copyright © 2015年 weidian. All rights reserved.
//

#import "KSDeviceConstant.h"
#import "OpenUDID.h"
#import "Reachability.h"
#include <sys/socket.h>
#include <sys/sysctl.h>
#include <net/if.h>
#include <net/if_dl.h>
#import <AdSupport/AdSupport.h>
#import "KSLocalTextUtils.h"
#import "OpenUDID.h"
#import <UIKit/UIKit.h>
#import <CoreTelephony/CTCarrier.h>
#import <CoreTelephony/CTTelephonyNetworkInfo.h>

@implementation KSDeviceConstant

//获取运行商的名称
+ (NSString *)carrierInfo
{
    CTTelephonyNetworkInfo *info = [[CTTelephonyNetworkInfo alloc] init];
    CTCarrier *carrier = [info subscriberCellularProvider];
    NSString *mCarrier = [NSString stringWithFormat:@"%@",[carrier carrierName]];
    return mCarrier;
}

+ (BOOL)isWIFI
{
    return  [[Reachability reachabilityForInternetConnection] currentReachabilityStatus] == ReachableViaWiFi;
}

//当前网络类型
+ (NSString *)netConnectType
{
    CTTelephonyNetworkInfo *info = [[CTTelephonyNetworkInfo alloc] init];
    NSString *mConnectType = [[NSString alloc] initWithFormat:@"%@",info.currentRadioAccessTechnology];
    return mConnectType;
}

//获得设备型号
+ (NSString *)getCurrentDeviceModel
{
    int mib[2];
    size_t len;
    char *machine;
    
    mib[0] = CTL_HW;
    mib[1] = HW_MACHINE;
    sysctl(mib, 2, NULL, &len, NULL, 0);
    machine = malloc(len);
    sysctl(mib, 2, machine, &len, NULL, 0);
    
    NSString *platform = [NSString stringWithCString:machine encoding:NSASCIIStringEncoding];
    free(machine);
    
    if ([platform isEqualToString:@"iPhone1,1"]) return @"iPhone 2G (A1203)";
    if ([platform isEqualToString:@"iPhone1,2"]) return @"iPhone 3G (A1241/A1324)";
    if ([platform isEqualToString:@"iPhone2,1"]) return @"iPhone 3GS (A1303/A1325)";
    if ([platform isEqualToString:@"iPhone3,1"]) return @"iPhone 4 (A1332)";
    if ([platform isEqualToString:@"iPhone3,2"]) return @"iPhone 4 (A1332)";
    if ([platform isEqualToString:@"iPhone3,3"]) return @"iPhone 4 (A1349)";
    if ([platform isEqualToString:@"iPhone4,1"]) return @"iPhone 4S (A1387/A1431)";
    if ([platform isEqualToString:@"iPhone5,1"]) return @"iPhone 5 (A1428)";
    if ([platform isEqualToString:@"iPhone5,2"]) return @"iPhone 5 (A1429/A1442)";
    if ([platform isEqualToString:@"iPhone5,3"]) return @"iPhone 5c (A1456/A1532)";
    if ([platform isEqualToString:@"iPhone5,4"]) return @"iPhone 5c (A1507/A1516/A1526/A1529)";
    if ([platform isEqualToString:@"iPhone6,1"]) return @"iPhone 5s (A1453/A1533)";
    if ([platform isEqualToString:@"iPhone6,2"]) return @"iPhone 5s (A1457/A1518/A1528/A1530)";
    if ([platform isEqualToString:@"iPhone7,1"]) return @"iPhone 6 Plus (A1522/A1524)";
    if ([platform isEqualToString:@"iPhone7,2"]) return @"iPhone 6 (A1549/A1586)";
    if ([platform isEqualToString:@"iPhone8,1"]) return @"iPhone 6S (A1633/A1688/A1691/A1700)";
    if ([platform isEqualToString:@"iPhone8,2"]) return @"iPhone 6S Plus (A1634/A1687/A1690/A1699)";
    if ([platform isEqualToString:@"iPhone8,4"]) return @"iPhone SE (A1662/A1723/A1724)";
    
    if ([platform isEqualToString:@"iPod1,1"])   return @"iPod Touch 1G (A1213)";
    if ([platform isEqualToString:@"iPod2,1"])   return @"iPod Touch 2G (A1288)";
    if ([platform isEqualToString:@"iPod3,1"])   return @"iPod Touch 3G (A1318)";
    if ([platform isEqualToString:@"iPod4,1"])   return @"iPod Touch 4G (A1367)";
    if ([platform isEqualToString:@"iPod5,1"])   return @"iPod Touch 5G (A1421/A1509)";
    if ([platform isEqualToString:@"iPod7,1"])   return @"iPod Touch 6G (A1574)";
    
    if ([platform isEqualToString:@"iPad1,1"])   return @"iPad 1 (A1219/A1337)";
    
    if ([platform isEqualToString:@"iPad2,1"])   return @"iPad 2 (A1395)";
    if ([platform isEqualToString:@"iPad2,2"])   return @"iPad 2 (A1396)";
    if ([platform isEqualToString:@"iPad2,3"])   return @"iPad 2 (A1397)";
    if ([platform isEqualToString:@"iPad2,4"])   return @"iPad 2 (A1395+New Chip)";
    if ([platform isEqualToString:@"iPad2,5"])   return @"iPad Mini 1 (A1432)";
    if ([platform isEqualToString:@"iPad2,6"])   return @"iPad Mini 1 (A1454)";
    if ([platform isEqualToString:@"iPad2,7"])   return @"iPad Mini 1 (A1455)";
    
    if ([platform isEqualToString:@"iPad3,1"])   return @"iPad 3 (A1416)";
    if ([platform isEqualToString:@"iPad3,2"])   return @"iPad 3 (A1403)";
    if ([platform isEqualToString:@"iPad3,3"])   return @"iPad 3 (A1430)";
    if ([platform isEqualToString:@"iPad3,4"])   return @"iPad 4 (A1458)";
    if ([platform isEqualToString:@"iPad3,5"])   return @"iPad 4 (A1459)";
    if ([platform isEqualToString:@"iPad3,6"])   return @"iPad 4 (A1460)";
    
    if ([platform isEqualToString:@"iPad4,1"])   return @"iPad Air (A1474)";
    if ([platform isEqualToString:@"iPad4,2"])   return @"iPad Air (A1475)";
    if ([platform isEqualToString:@"iPad4,3"])   return @"iPad Air (A1476)";
    if ([platform isEqualToString:@"iPad4,4"])   return @"iPad Mini 2 (A1489)";
    if ([platform isEqualToString:@"iPad4,5"])   return @"iPad Mini 2 (A1490)";
    if ([platform isEqualToString:@"iPad4,6"])   return @"iPad Mini 2 (A1491)";
    if ([platform isEqualToString:@"iPad4,7"])   return @"iPad Mini 3 (A1599)";
    if ([platform isEqualToString:@"iPad4,8"])   return @"iPad Mini 3 (A1600)";
    if ([platform isEqualToString:@"iPad4,9"])   return @"iPad Mini 3 (A1601)";
    
    if ([platform isEqualToString:@"iPad5,1"])   return @"iPad Mini 4 (A1538)";
    if ([platform isEqualToString:@"iPad5,2"])   return @"iPad Mini 4 (A1550)";
    if ([platform isEqualToString:@"iPad5,3"])   return @"iPad Air 2 (A1566)";
    if ([platform isEqualToString:@"iPad5,4"])   return @"iPad Air 2 (A1567)";
    
    if ([platform isEqualToString:@"iPad6,3"])   return @"iPad Pro (9.7 inch/A1673)";
    if ([platform isEqualToString:@"iPad6,4"])   return @"iPad Pro (9.7 inch/A1674/A1675)";
    if ([platform isEqualToString:@"iPad6,7"])   return @"iPad Pro (12.9 inch/A1584)";
    if ([platform isEqualToString:@"iPad6,8"])   return @"iPad Pro (12.9 inch/A1652)";
    
    if ([platform isEqualToString:@"i386"])      return @"iPhone Simulator";
    if ([platform isEqualToString:@"x86_64"])    return @"iPhone Simulator";
    return platform;
}

//软件版本
+ (NSString *)appVersion
{
   return  [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}

+ (NSString *)budlerVersion
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
}

+ (NSMutableDictionary *)deviceInfo
{
    NSMutableDictionary* dicItem = [[NSMutableDictionary alloc] initWithCapacity:15];
    [dicItem setObject:@"Apple" forKey:@"brand"];
    if ([[UIDevice currentDevice] respondsToSelector:@selector(identifierForVendor)])
    {
        NSString* uuid = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
        [dicItem setObject: (uuid ? uuid:@"") forKey:@"uuid"];
    }
    BOOL isWiFi = [[Reachability reachabilityForInternetConnection] currentReachabilityStatus] == ReachableViaWiFi;
    [dicItem setObject:isWiFi ? @"WIFI" : @"3G" forKey:@"network"];
    NSString *mid = [[UIDevice currentDevice] localizedModel];
    NSString *midEncode = [mid stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    [dicItem setObject:midEncode forKey:@"mid"];
    CGSize screenSize = [[[UIScreen mainScreen] currentMode] size];
    [dicItem setObject:[NSString stringWithFormat:@"%d", (int)screenSize.width] forKey:@"w"];
    [dicItem setObject:[NSString stringWithFormat:@"%d", (int)screenSize.height] forKey:@"h"];
    [dicItem setObject:[[UIDevice currentDevice] systemVersion] forKey:@"os"];
    if( (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) )
    {
        [dicItem setObject:@"ipad" forKey:@"platform"];
    }
    else
    {
        [dicItem setObject:@"iphone" forKey:@"platform"];
    }
    
    //shortVersion(外部版本)
    NSString *appVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    [dicItem setObject:appVersion forKey:@"version"];
    
    //bundleVersion(内部版本)
    NSString *bundlerVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
    [dicItem setObject:bundlerVersion forKey:@"bundlerVersion"];
    
    //appBuild
    NSString *appBuild = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"];
    [dicItem setObject:appBuild forKey:@"build"];
    
    [dicItem setObject:[OpenUDID value] forKey:@"open_id"];
    [dicItem setObject:@"com.koudai.instashop" forKey:@"appid"];
    
    //手机语言
    NSString *lan = [KSLocalTextUtils currentLanguage];
    [dicItem setObject:lan forKey:@"ACCEPT-LANGUAGE"];
    
    return dicItem;
}

@end
