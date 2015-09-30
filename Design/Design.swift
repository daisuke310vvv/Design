//
//  Design.swift
//  Design
//
//  Created by SatoDaisuke on 9/30/15.
//  Copyright © 2015 com.daisukeSato. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    class func hexString(var hex: NSString, alpha : CGFloat) -> UIColor? {
        hex = hex.stringByReplacingOccurrencesOfString("#", withString: "")
        let scanner = NSScanner(string: hex as String)
        var color: UInt32 = 0
        if scanner.scanHexInt(&color) {
            let r = CGFloat((color & 0xFF0000) >> 16) / 255.0
            let g = CGFloat((color & 0x00FF00) >> 8) / 255.0
            let b = CGFloat(color & 0x0000FF) / 255.0
            return UIColor(red:r,green:g,blue:b,alpha:alpha)
        } else {
            print("invalid hex string")
            return nil
        }
    }
}

enum Color: String {
    case Theme01    = "#ff00ff"
    case Theme02    = "#00ff00"
    
    case Twitter    = "#00aced"
    case Facebook   = "#305097"
    case Line       = "#5ae628"
    case Instagram  = "#3f729b"
    
    case White      = "#ffffff"
    case Black      = "#000000"
}

enum Font: CGFloat {
    // Size
    case S  = 12.0
    case M  = 16.0
    case L  = 20.0
    
    // Style
    enum Style:String {
        case Reguler    = "HiraKakuProN-W3"
        case Bold       = "HiraKakuProN-W6"
    }
    
    func name(style: Style) -> String {
        return style.rawValue
    }
    
}

enum Icon: String {
    case Menu = "m"
}

struct Design {
    
    // Color
    static func color(color:Color) -> UIColor {
        return UIColor.hexString(color.rawValue, alpha: 1.0) ?? UIColor.whiteColor()
    }
    static func color(color:Color, alpha: CGFloat) -> UIColor {
        return UIColor.hexString(color.rawValue, alpha: alpha) ?? UIColor.whiteColor()
    }
    
    // Font
    static func font(font:Font, style:Font.Style = .Reguler) -> UIFont {
        return UIFont(name: font.name(style), size: font.rawValue)!
    }
    
    // Icon
    static func icon(icon:Icon) -> NSString {
        return ""
    }
}