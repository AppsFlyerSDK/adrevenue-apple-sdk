//
//  AFADRWrapper.h
//  AppsFlyer-AdRevenue
//
//  Created by AndreyG-AF on 6/20/19.
//

#import <Foundation/Foundation.h>
#import "AFADRObject.h"

#define kAFADRWrapperTypeAppLovin         @"APPLOVIN"
#define kAFADRWrapperTypeGoogleAdMob      @"GOOGLE_ADMOB"
#define kAFADRWrapperTypeUnityAds         @"UNITY_ADS"
#define kAFADRWrapperTypeFacebookAudience @"FACEBOOK_AUDIENCE_NETWORK"
#define kAFADRWrapperTypeMoPub            @"MOPUB"


NS_ASSUME_NONNULL_BEGIN

@interface AFADRWrapper : AFADRObject

@property (nonatomic, copy) NSSet *underlyingDelegates;
@property (nonatomic, weak) id owner;

+ (instancetype)wrapperWithAdNetworkType:(NSUInteger)adNetworkType;
+ (instancetype)wrapperWithProtocol:(Protocol *)protocol owner:(id)owner;

- (NSString *)AdReveueWrapperType;

- (void)logEventWithName:(NSString*)name
                    type:(NSString*)type
              parameters:(NSDictionary*)parameters
                   error:(nullable NSError*)error;
- (void)setup;
@end

@interface AFADRCleanUpBlock : NSObject

- (instancetype)initWithCleanUpBlock:(void(^)(void))cleanUpBlock;

@end

NS_ASSUME_NONNULL_END
