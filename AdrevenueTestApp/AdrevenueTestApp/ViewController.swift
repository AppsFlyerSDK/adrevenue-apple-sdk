//
//  ViewController.swift
//  TestAppForAdrevenue
//
//  Created by Moris Gateno on 06/08/2023.
//

import UIKit
import AppsFlyerLib
import AppsFlyerAdRevenue

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: Any) {
        var dictionary = Dictionary<AnyHashable, Any>()
        dictionary[kAppsFlyerAdRevenueCountry] = "il"
        dictionary[kAppsFlyerAdRevenueAdUnit] = "02134568"
        dictionary[kAppsFlyerAdRevenueAdType] = "Banner"
        dictionary[kAppsFlyerAdRevenuePlacement] = "place"
        dictionary[kAppsFlyerAdRevenueECPMPayload] = "encrypt"
        dictionary["foo"] = "testcustom"
        dictionary["bar"] = "testcustom2"
        AppsFlyerAdRevenue.shared().logAdRevenue(monetizationNetwork: "facebook", mediationNetwork: MediationNetworkType.googleAdMob, eventRevenue: 0.026, revenueCurrency: "USD", additionalParameters: dictionary)
    }
    
}

