//
//  MPInterstitialAdDetailViewController.m
//
//  Copyright 2018-2019 Twitter, Inc.
//  Licensed under the MoPub SDK License Agreement
//  http://www.mopub.com/legal/sdk-license-agreement/
//

#import "MPInterstitialAdDetailViewController.h"
#import "MPAdInfo.h"
#import "MPSampleAppInstanceProvider.h"
#import "MPGlobal.h"
#import "MPAdPersistenceManager.h"
#import <AppsFlyerAdRevenue/AppsFlyerAdRevenue.h>
@interface MPInterstitialAdDetailViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *keywordsTextField;

@property (nonatomic, strong) MPAdInfo *info;
@property (nonatomic, strong) MPInterstitialAdController *interstitial;

@end

@implementation MPInterstitialAdDetailViewController

- (id)initWithAdInfo:(MPAdInfo *)adInfo
{
    self = [super init];
    if (self) {
        self.info = adInfo;

        if ([self respondsToSelector:@selector(setEdgesForExtendedLayout:)]) {
            self.edgesForExtendedLayout = UIRectEdgeNone;
        }
    }
    return self;
}

- (void)viewDidLoad
{
    self.title = @"Interstitial";
    self.titleLabel.text = self.info.title;
    self.IDLabel.text = self.info.ID;
    self.showButton.hidden = YES;

    self.interstitial = [[MPSampleAppInstanceProvider sharedProvider] buildMPInterstitialAdControllerWithAdUnitID:self.info.ID];
    // #import <AppsFlyer_AdRevenue/AppsFlyerAdRevenue.h>
    id delegate = [[AppsFlyerAdRevenue shared] anyDelegate:self adNetworkType:AFADRMoPubAdNetworkType];
    self.interstitial.delegate = delegate;

    self.keywordsTextField.text = self.info.keywords;

    [super viewDidLoad];
}

- (IBAction)didTapLoadButton:(id)sender
{
    [self.keywordsTextField endEditing:YES];

    [self.spinner startAnimating];
    self.showButton.hidden = YES;
    self.loadButton.enabled = NO;
    self.expireLabel.hidden = YES;
    self.failLabel.hidden = YES;
    self.willAppearLabel.alpha = 0.1;
    self.didAppearLabel.alpha = 0.1;
    self.willDisappearLabel.alpha = 0.1;
    self.didDisappearLabel.alpha = 0.1;
    self.didReceiveTapLabel.alpha = 0.1;

    self.interstitial.keywords = self.keywordsTextField.text;

    self.info.keywords = self.interstitial.keywords;
    // persist last used keywords if this is a saved ad
    if ([[MPAdPersistenceManager sharedManager] savedAdForID:self.info.ID] != nil) {
        [[MPAdPersistenceManager sharedManager] addSavedAd:self.info];
    }

    [self startTimer];
    [self.interstitial loadAd];
}

- (void)dealloc
{
    self.interstitial.delegate = nil;
}

- (IBAction)didTapShowButton:(id)sender
{
    [self.interstitial showFromViewController:self];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField endEditing:YES];

    return YES;
}

#pragma mark - <MPInterstitialAdControllerDelegate>

- (void)interstitialDidLoadAd:(MPInterstitialAdController *)interstitial
{
    [self endTimer];
    [self.spinner stopAnimating];
    self.showButton.hidden = NO;
    self.loadButton.enabled = YES;
}

- (void)interstitialDidFailToLoadAd:(MPInterstitialAdController *)interstitial
{
    [self endTimer];
    self.failLabel.hidden = NO;
    self.loadButton.enabled = YES;
    [self.spinner stopAnimating];
}

- (void)interstitialDidExpire:(MPInterstitialAdController *)interstitial
{
    self.expireLabel.hidden = NO;
    self.loadButton.enabled = YES;
    self.showButton.hidden = YES;
    [self.spinner stopAnimating];
}

- (void)interstitialWillAppear:(MPInterstitialAdController *)interstitial
{
    self.willAppearLabel.alpha = 1.0;
}

- (void)interstitialDidAppear:(MPInterstitialAdController *)interstitial
{
    self.didAppearLabel.alpha = 1.0;
}

- (void)interstitialWillDisappear:(MPInterstitialAdController *)interstitial
{
    self.willDisappearLabel.alpha = 1.0;
}

- (void)interstitialDidDisappear:(MPInterstitialAdController *)interstitial
{
    self.showButton.hidden = YES;
    self.didDisappearLabel.alpha = 1.0;
}

- (void)interstitialDidReceiveTapEvent:(MPInterstitialAdController *)interstitial
{
    self.didReceiveTapLabel.alpha = 1.0;
}

@end
