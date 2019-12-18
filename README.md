# AdRevenue project by AppsFlyer

[![Version](https://img.shields.io/cocoapods/v/AppsFlyer-AdRevenue.svg)](http://cocoapods.org/pods/AppsFlyer-AdRevenue)

### Table of Contents
- [Table of Contents](#table-of-contents)
- [Background](#background)
- [How it works](#how-it-works)

### Background

By attributing ad revenue, app owners gain the complete view of user LTV and campaign ROI. 
Ad revenue is generated by displaying ads on rewarded videos, offer walls, interstitials, and banners in an app.
To display ads, ad monetization network SDKs are integrated into the app. 
Having done so you are able to serve ads to your app users and generate ad revenue.

### How it works

The AdRevenue project mediates between the ad monetization network SDK and the AppsFlyer SDK.
In other words, you no longer need to send a revenue event, we will find it ourselves!
```

|-------------------------------------------------------------------------|
|               |Application| + |Monetization network SDK|                |
|-------------------------------------------------------------------------|
                                   ▾
|-------------------------------------------------------------------------|
|                             |AdRevenue|                                 |
|-------------------------------------------------------------------------|
| |AdRevenue main module| + |AdRevenue monetization network SDK mediator| |
|-------------------------------------------------------------------------|
                                   ▾ 
|-------------------------------------------------------------------------|
|                            |AppsFlyer SDK|                              |
|-------------------------------------------------------------------------|
                                   ▾ 
|-------------------------------------------------------------------------|
|                            |AppsFlyer SDK|                              |
|-------------------------------------------------------------------------|
```

### Supported ad monetization network SDKs
- [MoPub iOS](https://github.com/mopub/mopub-ios-sdk)



TBD
TBD
TDB
