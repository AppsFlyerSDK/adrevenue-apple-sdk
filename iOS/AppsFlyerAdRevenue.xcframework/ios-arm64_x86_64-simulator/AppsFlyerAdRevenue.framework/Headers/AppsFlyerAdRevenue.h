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

typedef NS_CLOSED_ENUM(NSUInteger, AppsFlyerAdRevenueMediationNetworkType) {
    AppsFlyerAdRevenueMediationNetworkTypeGoogleAdMob = 1,
    AppsFlyerAdRevenueMediationNetworkTypeIronSource = 2,
    AppsFlyerAdRevenueMediationNetworkTypeApplovinMax= 3,
    AppsFlyerAdRevenueMediationNetworkTypeFyber = 4,
    AppsFlyerAdRevenueMediationNetworkTypeAppodeal = 5,
    AppsFlyerAdRevenueMediationNetworkTypeAdmost = 6,
    AppsFlyerAdRevenueMediationNetworkTypeTopon = 7,
    AppsFlyerAdRevenueMediationNetworkTypeTradplus = 8,
    AppsFlyerAdRevenueMediationNetworkTypeYandex = 9,
    AppsFlyerAdRevenueMediationNetworkTypeChartBoost = 10,
    AppsFlyerAdRevenueMediationNetworkTypeUnity = 11,
    AppsFlyerAdRevenueMediationNetworkTypeCustom = 12,
    AppsFlyerAdRevenueMediationNetworkTypeDirectMonetization = 13
} NS_SWIFT_NAME(MediationNetworkType);

#define kAppsFlyerAdRevenueMonetizationNetwork         @"monetization_network"
#define kAppsFlyerAdRevenueMediationNetwork            @"mediation_network"
#define kAppsFlyerAdRevenueEventRevenue                @"event_revenue"
#define kAppsFlyerAdRevenueEventRevenueCurrency        @"event_revenue_currency"
#define kAppsFlyerAdRevenueCustomParameters            @"custom_parameters"

//Pre-defined keys for non-mandatory dictionary

//Code ISO 3166-1 format
#define kAppsFlyerAdRevenueCountry                     @"country"

//ID of the ad unit for the impression
#define kAppsFlyerAdRevenueAdUnit                      @"ad_unit"

//Format of the ad
#define kAppsFlyerAdRevenueAdType                      @"ad_type"

//ID of the ad placement for the impression
#define kAppsFlyerAdRevenuePlacement                   @"placement"

//Provided by Facebook Audience Network only, and will be reported to publishers
//approved by Facebook Audience Network within the closed beta
#define kAppsFlyerAdRevenueECPMPayload                 @"ecpm_payload"


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

/**
 * An API to provide the data from the impression payload to AdRevenue
 *
 * @param monetizationNetwork  network which monetized the impression (@"facebook")
 * @param mediationNetwork     mediation source that mediated the monetization network for the impression (AppsFlyerAdRevenueMediationNetworkTypeGoogleAdMob)
 * @param eventRevenue         reported impression’s revenue (@(0.001994303))
 * @param revenueCurrency reported impression’s revenue currency ISO 4217 format (@"USD")
 * @param additionalParameters         non-mandatory dictionary which can include pre-defined keys (kAppsFlyerAdRevenueCountry, etc)
 */
- (void)logAdRevenueWithMonetizationNetwork:(NSString * _Nonnull)monetizationNetwork
                           mediationNetwork:(AppsFlyerAdRevenueMediationNetworkType)mediationNetwork
                               eventRevenue:(NSNumber * _Nonnull)eventRevenue
                            revenueCurrency:(NSString * _Nonnull)revenueCurrency
                       additionalParameters:(NSDictionary * _Nullable)additionalParameters
NS_SWIFT_NAME(logAdRevenue(monetizationNetwork:mediationNetwork:eventRevenue:revenueCurrency:additionalParameters:));

@end





NS_ASSUME_NONNULL_END
