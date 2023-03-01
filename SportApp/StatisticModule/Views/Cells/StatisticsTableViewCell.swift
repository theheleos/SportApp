
import UIKit

class StatisticsTableViewCell: UITableViewCell {
    
    private let exerciseLabel: UILabel = {
        let label = UILabel()
        label.text = "Biceps"
        label.textColor = .specialGray
        label.font = .robotoMedium24()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let counterLabel: UILabel = {
        let label = UILabel()
        label.text = "+2"
        label.font = .robotoMedium24()
        label.textColor = .specialGreen
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let beforeLabel: UILabel = {
        let label = UILabel()
        label.text = "Before: 18"
        label.textColor = .specialLightBrown
        label.font = .robotoMedium14()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let nowLabel: UILabel = {
        let label = UILabel()
        label.text = "Now: 20"
        label.textColor = .specialLightBrown
        label.font = .robotoMedium14()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .specialLine
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var labelsStackView = UIStackView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = .clear
        selectionStyle = .none
        
        addSubview(exerciseLabel)
        addSubview(counterLabel)
        addSubview(lineView)
        
        labelsStackView = UIStackView(arrangedSubviews: [beforeLabel, nowLabel], axis: .horizontal, spacing: 10)
        labelsStackView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(labelsStackView)
    }
}

extension StatisticsTableViewCell {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            exerciseLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            exerciseLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            labelsStackView.topAnchor.constraint(equalTo: exerciseLabel.bottomAnchor, constant: 5),
            labelsStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            //labelsStackView.heightAnchor.constraint(equalToConstant: 27),
            
            counterLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            counterLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            lineView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            lineView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            lineView.bottomAnchor.constraint(equalTo: bottomAnchor),
            lineView.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
}
