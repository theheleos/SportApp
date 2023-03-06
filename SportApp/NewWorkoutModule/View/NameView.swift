import UIKit

class NameView: UIView {
    
    private let nameLabel = UILabel(text: "Name")
    
    private let nameTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .specialBrown
        textField.borderStyle = .none
        textField.layer.cornerRadius = 10
        textField.textColor = .specialGray
        textField.font = .robotoBold20()
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        textField.leftViewMode = .always
        textField.clearButtonMode = .always
        textField.returnKeyType = .done
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(nameLabel)
        addSubview(nameTextField)
    }
}

extension NameView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: topAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 7),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -7),
            nameLabel.heightAnchor.constraint(equalToConstant: 16),
             
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 3),
            nameTextField.leadingAnchor.constraint(equalTo: leadingAnchor),
            nameTextField.trailingAnchor.constraint(equalTo: trailingAnchor),
            nameTextField.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
