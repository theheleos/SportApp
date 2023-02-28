import UIKit

/*
let stackView = UIStackView()

stackView.addArrangedSubviews(YourView)

stackView.axis = .horizontal
stackview.spacing = 10

 
*/

extension UIStackView {
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
