//
//  NSString+FontAwesome.m
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

#import "NSString+FontAwesome.h"

@implementation NSString (FontAwesome)

#pragma mark - Public API
+ (FAIcon)fontAwesomeEnumForIconIdentifier:(NSString*)string {
    NSDictionary *enums = [self enumDictionary];
    return [enums[string] integerValue];
}

+ (NSString*)fontAwesomeIconStringForEnum:(FAIcon)value {
    return [NSString fontAwesomeIconUnicodeStrings:value];
}

+ (NSString*)fontAwesomeIconStringForIconIdentifier:(NSString*)identifier {
    return [self fontAwesomeIconStringForEnum:[self fontAwesomeEnumForIconIdentifier:identifier]];
}



#pragma mark - Data Initialization
+ (NSString *)fontAwesomeIconUnicodeStrings:(FAIcon)faIcon
{
    static NSDictionary *fontAwesomeUnicodeStrings;
    
    static dispatch_once_t unicodeStringsOnceToken;
    dispatch_once(&unicodeStringsOnceToken, ^{
        fontAwesomeUnicodeStrings =
        @{
          @(FAPlus):@"\uE679",
          @(FAMinus):@"\uE67A",
          @(FAArrowRight):@"\uE67B",
          @(FAArrowLeft):@"\uE67C",
          @(FAArrowUP):@"\uE67D",
          @(FAArrowDown):@"\uE67E",
          @(FACancel):@"\uE67F",
          @(FACorrent):@"\uE680",
          @(FACorrentCircle):@"\uE681",
          @(FACorrentCircleFull):@"\uE682",
          @(FACancelCircle):@"\uE683",
          @(FACancelCircleFull):@"\uE684",
          @(FAPlusCircle):@"\uE6855",
          @(FAPlusCircleFull):@"\uE686",
          @(FAMinusCircle):@"\uE687",
          @(FAMinusCircleFull):@"\uE688",
          @(FAArrowRightCircle):@"\uE689",
          @(FAArrowRightCircleFull):@"\uE68A",
          @(FAArrowLeftCircle):@"\uE68B",
          @(FAArrowLeftCircleFull):@"\uE68C",
          @(FAExclamationMark):@"\uE68D",
          @(FAExclamationMarkFull):@"\uE68E",
          @(FAClock):@"\uE68F",
          @(FAClockFull):@"\uE690",
          @(FAPlaceOrder):@"\uE691",
          @(FAGoodsManager):@"\uE692",
          @(FAOrderManager):@"\uE693",
          @(FAAnalysis):@"\uE694",
          @(FASearchGoods):@"\uE695",
          @(FASearchExpress):@"\uE696",
          @(FAQuickPay):@"\uE697",
          @(FADiscount):@"\uE698",
          @(FAIncome):@"\uE699",
          @(FAUnuse_0):@"\uE69A",
          @(FAChart):@"\uE69B",
          @(FAUnuse_1):@"\uE69C",
          @(FAMessage):@"\uE69D",
          @(FAGarbage):@"\uE69E",
          @(FAEdit):@"\uE69F",
          @(FAMoveUpDown):@"\uE6A0",
          @(FAMenu):@"\uE6A1",
          @(FACheckBox):@"\uE6A2",
          @(FANewmessage):@"\uE6A3",
          @(FABag):@"\uE6A4",
          @(FAImage):@"\uE6A5",
          @(FADetail):@"\uE6A6",
          @(FALocatin):@"\uE6A7",
          @(FAAppIcon):@"\uE6A8",
          @(FAPhone):@"\uE6A9",
          @(FASearch):@"\uE6AA",
          @(FAConnectLine):@"\uE6AB",
          @(FAConnectPhone):@"\uE6AC",
          @(FAFaq):@"\uE6AD",
          @(FASmile):@"\uE6AE",
          @(FAPreview):@"\uE6AF",
          @(FAPreLink):@"\uE6B0",
          @(FAMakeup):@"\uE6B1",
          @(FAShareInstagram):@"\uE6B2",
          @(FAShareFacebook):@"\uE6B3",
          @(FAShareLine):@"\uE6B4",
          @(FAShareWhatsapp):@"\uE6B5",
          @(FAShareBBM):@"\uE6B6",
          @(FASharePreview):@"\uE6B7",
          @(FAShareLink):@"\uE6B8",
          @(FAShareDesLink):@"\uE6B9",
          @(FAShareCopy):@"\uE6BA",
          @(FAShareShortMessage):@"\uE6BB",
          @(FAShareSave):@"\uE6BC",
          @(FAShareMore):@"\uE6BD",
          @(FAPromotionTool):@"\uE6C7",
          @(FALimitDiscount):@"\uE6C8",
          @(FAFullReduce):@"\uE6C9",
          @(FASourcePreview):@"\uE6CA",
          @(FADiscountShare):@"\uE6CB",
          @(FAShopEdit):@"\uE6CC",
          @(FACoupon):@"\uE6CD",
          
          @(FAChoose):@"\uE682",
          @(FACiclePlus):@"\uE685",
          @(FADelete):@"\uE69E",
          @(FAAttention):@"\uE68E",
          
          //4.2
          @(FAMeExpressSetting):@"\uE6D2",//个人设置页面、设置运费
          @(FAMeShopDecorate):@"\uE6D0",//个人设置页面、店铺装修
          @(FAMeHelpCenter):@"\uE6D1",//首页的helpCenter
          @(FAReplaceSearchExpress):@"\uE6D2",//代下单查运费
          @(FAReplaceSendBuyer):@"\uE6D3",//代下单发送给买家
          @(FAOrderDetailExpressInfo):@"\uE6D4",//订单详情物流信息
          @(FAMeQuickReceipt):@"\uE6DA",//首页点击进去、快速收款
          @(FAMeSearchExpress):@"\uE6DD",//首页点击进去、查运费
          @(FAMeSearchGoods):@"\uE6DE",//首页点击进去、查询商品
          @(FARefresh):@"\uE6DF",
          //4.5
          @(FACutPriceIcon):@"\uE6E0",//砍价的图标
          @(FAAfterSaleCoupon):@"\uE6E1",//售后优惠券
          //4.7
          @(FANoOpenSecuredTransIcon):@"\uE6E4",
          @(FAOrderDetailRefundsRpIcon):@"\uE6E5",
          @(FAOrderSearchDirectToAccount):@"\uE6EB",
          @(FAOrderSearchSecureTransaction):@"\uE6E9",
          //4.8
          @(FAContactWhatsAppIcon):@"\uE6ED"//联系方式的whatsApp
          
         };
    });
    NSString *value = [fontAwesomeUnicodeStrings objectForKey:@(faIcon)];
    return value;
}

+ (NSDictionary *)enumDictionary {
    
	static NSDictionary *enumDictionary;
    
    static dispatch_once_t enumDictionaryOnceToken;
    dispatch_once(&enumDictionaryOnceToken, ^{
        
		NSMutableDictionary *tmp = [[NSMutableDictionary alloc] init];
        tmp[@"fa-plus"] = @(FAPlus);
        tmp[@"fa-minus"] = @(FAMinus);
        tmp[@"fa-arrowRight"] = @(FAArrowRight);
        tmp[@"fa-arrowLeft"] = @(FAArrowLeft);
        tmp[@"fa-arrowUp"] = @(FAArrowUP);
        tmp[@"fa-arrowDown"] = @(FAArrowDown);
        tmp[@"fa-cancel"] = @(FACancel);
        tmp[@"fa-corrent"] = @(FACorrent);
        tmp[@"fa-correntCircle"] = @(FACorrentCircle);
        tmp[@"fa-correntCircleFull"] = @(FACorrentCircleFull);
        tmp[@"fa-cancelCircle"] = @(FACancelCircle);
        tmp[@"fa-cancelCircleFull"] = @(FACancelCircleFull);
        tmp[@"fa-plusCircle"] = @(FAPlusCircle);
        tmp[@"fa-plusCircleFull"] = @(FAPlusCircleFull);
        tmp[@"fa-minusCircle"] = @(FAMinusCircle);
        tmp[@"fa-minusCircleFull"] = @(FAMinusCircleFull);
        tmp[@"fa-arrowRightCircle"] = @(FAArrowRightCircle);
        tmp[@"fa-arrowRightCircleFull"] = @(FAArrowRightCircleFull);
        tmp[@"fa-arrowLeftCircle"] = @(FAArrowLeftCircle);
        tmp[@"fa-arrowLeftCircleFull"] = @(FAArrowLeftCircleFull);
        tmp[@"fa-exclamationMark"] = @(FAExclamationMark);
        tmp[@"fa-exclamationMarkFull"] = @(FAExclamationMarkFull);
        tmp[@"fa-clock"] = @(FAClock);
        tmp[@"fa-clockFull"] = @(FAClockFull);
        tmp[@"fa-placeOrder"] = @(FAPlaceOrder);
        tmp[@"fa-goodsManager"] = @(FAGoodsManager);
        tmp[@"fa-orderManager"] = @(FAOrderManager);
        tmp[@"fa-analysis"] = @(FAAnalysis);
        tmp[@"fa-searchGoods"] = @(FASearchGoods);
        tmp[@"fa-searchExpress"] = @(FASearchExpress);
        tmp[@"fa-quickPay"] = @(FAQuickPay);
        tmp[@"fa-discount"] = @(FADiscount);
        tmp[@"fa-income"] = @(FAIncome);
        tmp[@"fa-unuse_0"] = @(FAUnuse_0);
        tmp[@"fa-chart"] = @(FAChart);
        tmp[@"fa-unuse_1"] = @(FAUnuse_1);
        tmp[@"fa-message"] = @(FAMessage);
        tmp[@"fa-grabage"] = @(FAGarbage);
        tmp[@"fa-edit"] = @(FAEdit);
        tmp[@"fa-moveUpDown"] = @(FAMoveUpDown);
        tmp[@"fa-menu"] = @(FAMenu);
        tmp[@"fa-checkBox"] = @(FACheckBox);
        tmp[@"fa-newmessage"] = @(FANewmessage);
        tmp[@"fa-bag"] = @(FABag);
        tmp[@"fa-image"] = @(FAImage);
        tmp[@"fa-detail"] = @(FADetail);
        tmp[@"fa-location"] = @(FALocatin);
        tmp[@"fa-appIcon"] = @(FAAppIcon);
        tmp[@"fa-phone"] = @(FAPhone);
        tmp[@"fa-search"] = @(FASearch);
        tmp[@"fa-connectLine"] = @(FAConnectLine);
        tmp[@"fa-connectPhone"] = @(FAConnectPhone);
        tmp[@"fa-faq"] = @(FAFaq);
        tmp[@"fa-smile"] = @(FASmile);
        tmp[@"fa-preview"] = @(FAPreview);
        tmp[@"fa-preLink"] = @(FAPreLink);
        tmp[@"fa-makeup"] = @(FAMakeup);
        tmp[@"fa-shareInstagram"] = @(FAShareInstagram);
        tmp[@"fa-shareFacebook"] = @(FAShareFacebook);
        tmp[@"fa-shareLine"] = @(FAShareLine);
        tmp[@"fa-shareWhatsapp"] = @(FAShareWhatsapp);
        tmp[@"fa-shareBBM"] = @(FAShareBBM);
        tmp[@"fa-sharePreview"] = @(FASharePreview);
        tmp[@"fa-shareLink"] = @(FAShareLink);
        tmp[@"fa-shareDesLink"] = @(FAShareDesLink);
        tmp[@"fa-shareCopy"] = @(FAShareCopy);
        tmp[@"fa-shareShortMessage"] = @(FAShareShortMessage);
        tmp[@"fa-shareSave"] = @(FAShareSave);
        tmp[@"fa-shareMore"] = @(FAShareMore);
        tmp[@"fa-shareMore"] = @(FAShareMore);
        tmp[@"fa-shareMore"] = @(FAShareMore);
        tmp[@"fa-shareMore"] = @(FAShareMore);
        tmp[@"fa-promotionTool"] = @(FAPromotionTool);
        tmp[@"fa-limitDiscount"] = @(FALimitDiscount);
        tmp[@"fa-fullReduce"] = @(FAFullReduce);
        tmp[@"fa-sourcePreview"] = @(FASourcePreview);
        tmp[@"fa-discountShare"] = @(FADiscountShare);
        tmp[@"fa-shopEdit"] = @(FAShopEdit);
        tmp[@"fa-coupon"] = @(FACoupon);
        
        ///////////
        tmp[@"fa-choose"] = @(FAChoose);
        tmp[@"fa-ciclePlus"] = @(FACiclePlus);
        tmp[@"fa-delete"] = @(FADelete);
        tmp[@"fa-attention"] = @(FAAttention);
        
        //4.2
        tmp[@"fa-meExpressSetting"] = @(FAMeExpressSetting);
        tmp[@"fa-meShopDecorate"] = @(FAMeShopDecorate);
        tmp[@"fa-meHelpCenter"] = @(FAMeHelpCenter);
        tmp[@"fa-replaceSearchExpress"] = @(FAReplaceSearchExpress);
        tmp[@"fa-replaceSendBuyer"] = @(FAReplaceSendBuyer);
        tmp[@"fa-orderDetailExpressInfo"] = @(FAOrderDetailExpressInfo);
        tmp[@"fa-meQucikReceipt"] = @(FAMeQuickReceipt);
        tmp[@"fa-meSearchExpress"] = @(FAMeSearchExpress);
        tmp[@"fa-meSearchGoods"] = @(FAMeSearchGoods);
        tmp[@"fa-refresh"] = @(FARefresh);
        
        //4.5
        tmp[@"fa-cutPriceIcon"] = @(FACutPriceIcon);//砍价的图标
        tmp[@"fa-afterSaleCoupon"] = @(FAAfterSaleCoupon);//售后优惠券
        
        //4.7
        tmp[@"fa-noOpenSeucredTransIcon"] = @(FANoOpenSecuredTransIcon);
        tmp[@"fa-orderDeatilRefundsRpIcon"] = @(FAOrderDetailRefundsRpIcon);
        tmp[@"fa-orderSearchDirectToAccount"] = @(FAOrderSearchDirectToAccount);
        tmp[@"fa-orderSearchSecureTransaction"] = @(FAOrderSearchSecureTransaction);
        
        //4.8
        tmp[@"fa-contactWhatsAppIcon"] = @(FAContactWhatsAppIcon);
        enumDictionary = tmp;
	});
    
    return enumDictionary;
}

@end
