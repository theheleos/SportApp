import UIKit

class CalendarView: UIView {
    
    private let calendatCollectionView = CalendarCollectionView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = .specialGreen
        layer.cornerRadius = 10
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(calendatCollectionView)
    }
}

extension CalendarView {
    func setConstraints() {
        NSLayoutConstraint.activate([
            calendatCollectionView.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            calendatCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 105),
            calendatCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            calendatCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5)
        ])
    }
}
