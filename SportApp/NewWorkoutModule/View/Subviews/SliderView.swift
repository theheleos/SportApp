import UIKit

class SliderView: UIView {
    
    private let nameLabel = UILabel(text: "Name", font: .robotoMedium18(), textColor: .specialGray)
    
    private let numberLabel = UILabel(text: "0", font: .robotoMedium24(), textColor: .specialGray)
    
    private lazy var slider = GreenSlider()
    
    private var stackView = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init(name: String, minValue: Float, maxValue: Float) {
        self.init(frame: .zero)
        nameLabel.text = name
        slider.minimumValue = minValue
        slider.maximumValue = maxValue
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = .clear
        translatesAutoresizingMaskIntoConstraints = false
        
        let labelStackView = UIStackView(arrangedSubviews: [nameLabel, numberLabel], axis: .horizontal, spacing: 0)
        labelStackView.distribution = .equalCentering
        
        stackView = UIStackView(arrangedSubviews: [labelStackView, slider], axis: .vertical, spacing: 10)
        addSubview(stackView)
    }
}

extension SliderView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
