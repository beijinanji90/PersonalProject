//
//  NSString+FontAwesome.h
//
//  Copyright (c) 2012 Alex Usbergo. All rights reserved.
//
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//

#import <Foundation/Foundation.h>

static NSString *const kFontAwesomeFamilyName = @"iconfont";

/**
 @abstract FontAwesome Icons.
 */
typedef NS_ENUM(NSInteger, FAIcon) {
    FAPlus,//E679 加号
    FAMinus,//E67A 减号
    FAArrowRight,
    FAArrowLeft,
    FAArrowUP,
    FAArrowDown,
    FACancel,
    FACorrent,
    FACorrentCircle,
    FACorrentCircleFull,
    FACancelCircle,
    FACancelCircleFull,
    FAPlusCircle,
    FAPlusCircleFull,
    FAMinusCircle,
    FAMinusCircleFull,
    FAArrowRightCircle,
    FAArrowRightCircleFull,
    FAArrowLeftCircle,
    FAArrowLeftCircleFull,
    FAExclamationMark,//感叹号
    FAExclamationMarkFull,
    FAClock,//时钟
    FAClockFull,
    FAPlaceOrder,//代下单
    FAGoodsManager,//商品管理
    FAOrderManager,//订单管理
    FAAnalysis,//统计
    FASearchGoods,//查询商品
    FASearchExpress,//查运费
    FAQuickPay,//快速收款
    FADiscount,//限时折扣
    FAIncome,//收入
    FAUnuse_0,/*****未使用******/
    FAChart,//购物车
    FAUnuse_1,/*****未使用******/
    FAMessage,
    FAGarbage,//回收站
    FAEdit,//编辑
    FAMoveUpDown,//上下移动
    FAMenu,//菜单
    FACheckBox,//选择框
    FANewmessage,//新消息
    FABag,
    FAImage,//分享详情
    FADetail,//分享详情
    FALocatin,
    FAAppIcon,
    FAPhone,//电话
    FASearch,//放大镜
    FAConnectLine,
    FAConnectPhone,
    FAFaq,
    FASmile,
    FAPreview,//预览
    FAPreLink,//预览链接
    FAMakeup,//装修
    FAShareInstagram,
    FAShareFacebook,
    FAShareLine,
    FAShareWhatsapp,
    FAShareBBM,
    FASharePreview,
    FAShareLink,
    FAShareDesLink,
    FAShareCopy,
    FAShareShortMessage,//短信
    FAShareSave,//保存
    FAShareMore,
    //3.7
    FAPromotionTool,//促销工具
    FALimitDiscount,//限时折扣
    FAFullReduce,//全店满减
    //3.9
    FASourcePreview,//分销 预览
    FADiscountShare,//折扣分享
    FAShopEdit,//店铺编辑
    //4.0
    FACoupon,//优惠券
    
    ////////////
    FAChoose,
    FACiclePlus,
    FADelete,
    FAAttention,
    
    //4.2
    FAMeExpressSetting,//个人设置页面、设置运费
    FAMeShopDecorate,//个人设置页面、店铺装修
    FAMeHelpCenter,//首页的helpCenter
    FAReplaceSearchExpress,//代下单查运费
    FAReplaceSendBuyer,//代下单发送给买家
    FAOrderDetailExpressInfo,//订单详情物流信息
    FAMeSearchExpress,//首页点击进去、查运费
    FAMeQuickReceipt,//首页点击进去、快速收款
    FAMeSearchGoods,//首页点击进去、查询商品
    FARefresh,//刷新
    
    //4.5
    FACutPriceIcon,//砍价的图标
    FAAfterSaleCoupon,//售后优惠券
    
    //4.7
    FANoOpenSecuredTransIcon,//未开启担保交易提示图标
    FAOrderDetailRefundsRpIcon,//退款的时候，订单详情展示退款商品
    FAOrderSearchDirectToAccount,//订单搜索，直接到账
    FAOrderSearchSecureTransaction,//订单搜索，担保交易

    //4.8
    FAContactWhatsAppIcon//whatsApp图标
};



@interface NSString (FontAwesome)

/**
 @abstract Returns the correct enum for a font-awesome icon.
 @discussion The list of identifiers can be found here: http://fortawesome.github.io/Font-Awesome/icons
 */
+ (FAIcon)fontAwesomeEnumForIconIdentifier:(NSString*)string;

/**
 @abstract Returns the font-awesome character associated to the icon enum passed as argument 
 */
+ (NSString*)fontAwesomeIconStringForEnum:(FAIcon)value;

/* 
 @abstract Returns the font-awesome character associated to the font-awesome identifier.
 @discussion The list of identifiers can be found here: http://fortawesome.github.io/Font-Awesome/icons
 */
+ (NSString*)fontAwesomeIconStringForIconIdentifier:(NSString*)identifier;

@end
