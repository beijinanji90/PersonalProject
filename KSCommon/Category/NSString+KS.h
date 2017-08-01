//
//  NSString+YS.h
//  YSUniv
//
//  Created by beijinanji90 on 15/11/16.
//  Copyright © 2015年 weidian. All rights reserved.
//

#import <Foundation/Foundation.h>

//判断是否为空
extern BOOL const ISStringEmpty(NSString *string);

//取出首尾空格
extern NSString* const TrimWitespaceCharacter(NSString *string);

@interface NSString (KS)

- (NSString *)trim;


@end
