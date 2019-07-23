//
//  MPSampleAppLogReader.h
//
//  Copyright 2018-2019 Twitter, Inc.
//  Licensed under the MoPub SDK License Agreement
//  http://www.mopub.com/legal/sdk-license-agreement/
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MPSampleAppLogReader : NSObject

+ (MPSampleAppLogReader *)sharedLogReader;

- (void)beginReadingLogMessages;

@end
