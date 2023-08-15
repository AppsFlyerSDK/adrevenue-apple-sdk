//
//  ViewController.swift
//  TestAppForAdrevenue
//
//  Created by Moris Gateno on 06/08/2023.
//

import UIKit
import AppsFlyerAdRevenue
import AppsFlyerLib

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: Any) {
        let dictionary = NSMutableDictionary()
        dictionary[kAppsFlyerAdRevenueCountry] = "il"
        dictionary[kAppsFlyerAdRevenueAdUnit] = "02134568"
        dictionary[kAppsFlyerAdRevenueAdType] = "Banner"
        dictionary[kAppsFlyerAdRevenuePlacement] = "place"
        dictionary[kAppsFlyerAdRevenueECPMPayload] = "encrypt"
        dictionary["foo"] = "testcustom"
        dictionary["bar"] = "testcustom2"
        AppsFlyerAdRevenue.shared().logAdRevenue(monetizationNetwork: "facebook", mediationNetwork: MediationNetworkType.googleAdMob, eventRevenue: 0.026, revenueCurrency: "USD", additionalParameters: (dictionary as! [AnyHashable : Any]))
    }
    
}

