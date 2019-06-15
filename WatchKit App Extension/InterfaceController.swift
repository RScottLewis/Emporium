/*
	Copyright (C) 2016 Apple Inc. All Rights Reserved.
	See LICENSE.txt for this sample’s licensing information
	
	Abstract:
	WatchKit payment app
 */

import WatchKit
import Foundation
import PassKit

class InterfaceController: WKInterfaceController {

    let paymentHandler = PaymentHandler()

    @IBAction func payPressed(sender: AnyObject) {
        paymentHandler.startPayment() { (success) in
            if success {
                self.pushController(withName: "Confirmation", context: nil)
            } else {

            }
        }
    }

}
