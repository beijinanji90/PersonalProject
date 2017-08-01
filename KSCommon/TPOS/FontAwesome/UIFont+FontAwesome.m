//
//  UIFont+FontAwesome.m
//  FontAwesome-iOS Demo
//
//  Created by Alex Usbergo on 1/16/13.
//  Copyright (c) 2013 Alex Usbergo. All rights reserved.
//

#import "UIFont+FontAwesome.h"
#import "NSString+FontAwesome.h"

@implementation UIFont (FontAwesome)

#pragma mark - Public API
+ (UIFont*)fontAwesomeFontOfSize:(CGFloat)size {
    
    
    NSArray *familyNames =[[NSArray alloc]initWithArray:[UIFont familyNames]];
    NSArray *fontNames;
    NSInteger indFamily, indFont;
//    NSLog(@"[familyNames count]===%lu",(unsigned long)[familyNames count]);
    for(indFamily=0;indFamily<[familyNames count];++indFamily)
        
    {
//        NSLog(@"Family name: %@", [familyNames objectAtIndex:indFamily]);
        fontNames =[[NSArray alloc]initWithArray:[UIFont fontNamesForFamilyName:[familyNames objectAtIndex:indFamily]]];
        
        for(indFont=0; indFont<[fontNames count]; ++indFont)
            
        {
//            NSLog(@"Font name: %@",[fontNames objectAtIndex:indFont]);
            
        }
        

    }
    
   
    
    
	UIFont *font = [UIFont fontWithName:kFontAwesomeFamilyName size:size];
    NSAssert(font!=nil, @"%@ couldn't be loaded",kFontAwesomeFamilyName);
    return font;
}

@end
