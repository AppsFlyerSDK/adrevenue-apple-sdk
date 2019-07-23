//
//  AFADRDelegate.h
//  AppsFlyer-AdRevenue
//
//  Created by AndreyG-AF on 6/25/19.
//

#import <Foundation/Foundation.h>
#import "AFADRWrapper.h"

NS_ASSUME_NONNULL_BEGIN

@interface AFADRDelegate : AFADRObject

- (instancetype)initWithWrapper:(AFADRWrapper*)wrapper;
- (Protocol *)interceptedProtocol;
- (NSString *)adNetworkEventType;
- (void)logEventWithName:(NSString*)name parameters:(NSDictionary*)parameters error:(nullable NSError*)error;

@end

NS_ASSUME_NONNULL_END
