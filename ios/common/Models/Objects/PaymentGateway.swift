//
//  PaymentGateway.swift
//  Shared
//
//  Created by Manly Man on 12/11/19.
//  Copyright © 2019 Innomalist. All rights reserved.
//

import UIKit

public class PaymentGateway: Codable, Equatable {
    public static func == (lhs: PaymentGateway, rhs: PaymentGateway) -> Bool {
        return lhs.id == rhs.id
    }
    
    public var id: Int
    var title: String
    public var type: PaymentGatewayType
    public var publicKey: String?
}

public enum PaymentGatewayType: String, Codable {
    case Stripe = "stripe"
    case Braintree = "braintree"
    case Flutterwave = "flutterwave"
    case PayGate = "paygate"
}
