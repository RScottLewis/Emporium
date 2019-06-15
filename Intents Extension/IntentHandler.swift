/*
	Copyright (C) 2016 Apple Inc. All Rights Reserved.
	See LICENSE.txt for this sample’s licensing information
	
	Abstract:
	A simple ride sharing intent that accepts Apple Pay as its payment method.
	            This intent has been heavily simplified for the purposes of demonstrating Apple Pay.
 */

import Intents
import PassKit

class IntentHandler: INExtension, INRequestRideIntentHandling {
    let paymentHandler = PaymentHandler()

    func handle(intent: INRequestRideIntent, completion: @escaping (INRequestRideIntentResponse) -> Void) {
        var response = INRequestRideIntentResponse(code: .success, userActivity: nil)
        let rideStatus = INRideStatus()

        // Apple Pay Payment
        paymentHandler.startPayment() { (success) in
            if success {
                var driverName = PersonNameComponents()
                driverName.givenName = "Johnny"
                driverName.familyName = "A"
                let driverHandle = INPersonHandle(value: "john-appleseed@mac.com", type: .emailAddress)
                
                rideStatus.driver = INRideDriver(personHandle: driverHandle, nameComponents: driverName, displayName: nil, image: nil, contactIdentifier: nil, customIdentifier: nil)
            } else {
                response = INRequestRideIntentResponse(code: .failure, userActivity: nil)
            }
            completion(response)
        }
    }

    func resolveUsesApplePayForPayment(forRequestRide intent: INRequestRideIntent, with completion: (INBooleanResolutionResult) -> Void) {
        completion(INBooleanResolutionResult.success(with: true))
    }

}
