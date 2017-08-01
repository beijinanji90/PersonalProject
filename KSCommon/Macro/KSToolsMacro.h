//
//  YSToolsMacro.h
//  YSUniv
//
//  Created by beijinanji90 on 15/11/16.
//  Copyright © 2015年 weidian. All rights reserved.
//

#ifndef KSToolsMacro_h
#define KSToolsMacro_h

#define SuppressPerformSelectorLeakWarning(Stuff) \
do { \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Warc-performSelector-leaks\"") \
Stuff; \
_Pragma("clang diagnostic pop") \
} while (0)

#ifdef DEBUG
#define KSLog(...) NSLog(__VA_ARGS__)
#else
#define KSLog(...)
#endif


#endif
