import UIKit

class NewWorkoutViewController: UIViewController {
    
    private let newWorkoutLabel = UILabel(text: "NEW WORKOUT", font: .robotoMedium24(), textColor: .specialGray)
    
    private lazy var closeButton = CloseButton(type: .system)
    
    private let nameView = NameView()
    private let dateAndReapeatView = DateAndRepeatView()
    private let repsOrTimerView = RepsOrTimerView()
    
    private lazy var saveButton = GreenButton(text: "SAVE")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        view.backgroundColor = .specialBackground
        
        view.addSubview(newWorkoutLabel)
        view.addSubview(closeButton)
        view.addSubview(nameView)
        view.addSubview(dateAndReapeatView)
        
    }
    
    @objc private func closeButtonTapped() {
        dismiss(animated: true)
    }
    
}

extension NewWorkoutViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            newWorkoutLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            newWorkoutLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            closeButton.centerYAnchor.constraint(equalTo: newWorkoutLabel.centerYAnchor),
            closeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            closeButton.heightAnchor.constraint(equalToConstant: 33),
            closeButton.widthAnchor.constraint(equalToConstant: 33),
            
            nameView.topAnchor.constraint(equalTo: newWorkoutLabel.bottomAnchor, constant: 10),
            nameView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            nameView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            nameView.heightAnchor.constraint(equalToConstant: 60),
            
            
            dateAndReapeatView.topAnchor.constraint(equalTo: nameView.bottomAnchor, constant: 20),
            dateAndReapeatView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            dateAndReapeatView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            dateAndReapeatView.heightAnchor.constraint(equalToConstant: 110),
           
        ])
    }
}
