import UIKit

extension UILabel {
    convenience init(text: String = "") {
        self.init()
        self.text = text
        font = .robotoMedium14()
        textColor = .specialLightBrown
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.5
        translatesAutoresizingMaskIntoConstraints = false
    }
}
