//
//  AppsFlyerAdRevenue.h
//  AppsFlyerAdRevenue
//
//  Created by Andrii Hahan on 8/29/19.
//  Copyright © 2019 AppsFlyer. All rights reserved.
//  v0.5.0

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, AFADRAdNetworkType) {
    AFADRFacebookAudienceAdNetworkType,
    AFADRUnityAdsAdNetworkType,
    AFADRMoPubAdNetworkType
};

@class AFADREvent;
@class AFADRWrapper;

@protocol AppsFlyerAdRevenueDelegate

- (BOOL)shouldSendEvent:(AFADREvent *)event;

@end

@interface AppsFlyerAdRevenue : NSObject

@property BOOL isDebug;
@property BOOL isOnlyRecordImpressionData;

+ (instancetype)shared;

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

+ (void)start;

- (void)trackEvent:(AFADREvent *)event;

- (id)anyDelegate:(nonnull id)delegate adNetworkType:(AFADRAdNetworkType)adNetworkType;


@end

NS_ASSUME_NONNULL_END
