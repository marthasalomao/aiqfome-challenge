import Foundation
import UIKit

struct Fonts {
    static let nunitoBold = "Nunito-Bold"
    static let nunitoRegular = "Nunito-Regular"
    static let nunitoSemiBold = "Nunito-SemiBold"
}

extension UIFont {
    static func NunitoBold(size: CGFloat) -> UIFont? {
        return UIFont(name: Fonts.nunitoBold, size: size)
    }
    
    static func NunitoRegular(size: CGFloat) -> UIFont? {
        return UIFont(name: Fonts.nunitoRegular, size: size)
    }
    
    static func NunitoSemiBold(size: CGFloat) -> UIFont? {
        return UIFont(name: Fonts.nunitoSemiBold, size: size)
    }
}
