# Emporium: A Simple Ride Sharing Experience with Apple Pay

This sample shows how to integrate Apple Pay into an eCommerce experience across iOS and WatchOS. You'll learn how to make payment requests, collect contact information, apply discounts for debit/credit cards, and use the Apple Pay button.

The app is a ride sharing app that enables Apple Pay to be used in

* An iOS application
* A WatchKit application
* A Siri and Maps intents extension

In all three of these, payment is taken and handled by a shared `PaymentHandler`.

## Requirements

If you're running this application on an iOS device you will need an Apple Pay card available, or alternatively you can use the iOS Simulator. Additionally, you'll need to have set up an Apple Pay merchant identifier. You can do this using Xcode's Capabilities window, which will also set up the required entitlement on your behalf.

For more information about processing an Apple Pay payment using a payment platform or merchant bank, visit [this link](developer.apple.com/apple-pay).

### Build

Xcode 10.1, iOS 10.0 SDK, watchOS 4.1 SDK

### Runtime

iOS 10.1, watchOS 4.1

Copyright (C) 2016 Apple Inc. All rights reserved.

REASON FOR REISSUE: I UPGRADED THE CODE TO 10.1 AND SWIFT 4.1
