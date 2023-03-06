import UIKit

class DateAndRepeatView: UIView {
    
    private let dateAndRepeatLabel = UILabel(text: "Date and repeat")
    
    private let backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .specialBrown
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let dateLabel: UILabel = {
        let label = UILabel()
        label.text = "Date"
        label.textColor = .specialGray
        label.font = .robotoMedium18()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let datePicker: UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.tintColor = .specialGreen
        datePicker.backgroundColor = .none
        datePicker.datePickerMode = .date
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        return datePicker
    }()
    
    private let everyWeekLabel: UILabel = {
        let label = UILabel()
        label.text = "Repeat every 7 days"
        label.textColor = .specialGray
        label.font = .robotoMedium18()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let everyWeekSwitch: UISwitch = {
        let switchh = UISwitch()
        switchh.onTintColor = .specialGreen
        switchh.isOn = true
        switchh.translatesAutoresizingMaskIntoConstraints = false
        return switchh
    }()
    
    private var dateLabelAndPickerStackView = UIStackView()
    private var everyWeekStackView = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = .specialBackground
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(dateAndRepeatLabel)
        addSubview(backgroundView)

        dateLabelAndPickerStackView = UIStackView(arrangedSubviews: [dateLabel, datePicker], axis: .horizontal, spacing: 0)
        addSubview(dateLabelAndPickerStackView)
        
        everyWeekStackView = UIStackView(arrangedSubviews: [everyWeekLabel, everyWeekSwitch], axis: .horizontal, spacing: 0)
        addSubview(everyWeekStackView)
    }
}

extension DateAndRepeatView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            dateAndRepeatLabel.topAnchor.constraint(equalTo: topAnchor),
            dateAndRepeatLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 7),

            backgroundView.topAnchor.constraint(equalTo: dateAndRepeatLabel.bottomAnchor, constant: 5),
            backgroundView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: bottomAnchor),

            dateLabelAndPickerStackView.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 10),
            dateLabelAndPickerStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            dateLabelAndPickerStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            dateLabelAndPickerStackView.heightAnchor.constraint(equalToConstant: 30),
            
            everyWeekStackView.topAnchor.constraint(equalTo: dateLabelAndPickerStackView.bottomAnchor, constant: 10),
            everyWeekStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            everyWeekStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            everyWeekStackView.heightAnchor.constraint(equalToConstant: 30),

        ])
    }
}

