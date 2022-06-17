//
//  ECStyle.swift
//  EllisCarMeetingTest
//
//  Created by CHEN on 17/06/2022.
//

import UIKit

extension UIFont {
    // TODO: Get all the fonts for every target and make them global
    
    static let italic = "HelveticaNeue-Italic"
    static let bold = "HelveticaNeue-Bold"
    static let normal = "HelveticaNeue"
    
    static let appFont = "AvenirNext-Regular"//"AvenirNextLTPro-Regular"
    static let appFontBold = "AvenirNext-Bold"//"AvenirNextLTPro-Bold"
    static let appFontItalic = "AvenirNext-Italic"//"AvenirNextLTPro-It"
    static let appFontDemiBold = "AvenirNext-DemiBold"
    
    static func setAppFont(size: CGFloat) -> UIFont {
        return UIFont(name: UIFont.appFont, size: size)!
    }
    
    static let pt: CGFloat = 0.00118483 * UIScreen.main.bounds.height
    static let widthPt: CGFloat = 0.0025641 * UIScreen.main.bounds.width
    
    static func setDemiBoldFont(size: CGFloat) -> UIFont {
        return UIFont(name: UIFont.appFontDemiBold, size: size)!
    }
    
    static func setBoldAppFont(size: CGFloat) -> UIFont {
        return UIFont(name: UIFont.appFontBold, size: size)!
    }
    
    static func setMichromaFont(size: CGFloat) -> UIFont {
        return UIFont(name: "Michroma", size: size)!
    }
}
