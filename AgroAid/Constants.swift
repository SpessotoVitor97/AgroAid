//
//  Constants.swift
//  AgroAid
//
//  Created by Vitor Spessoto on 28/08/21.
//

import UIKit

struct K {
    static let appName = "AgroAid"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "fromRegisterToServiceSelection"
    static let loginSegue = "fromLoginToServiceSelection"
    
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lighBlue = "BrandLightBlue"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
