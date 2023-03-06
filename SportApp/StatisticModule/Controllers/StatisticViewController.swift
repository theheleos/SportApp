import UIKit

class StatisticViewController: UIViewController {
    
    private let statisticLabel: UILabel = {
        let label = UILabel()
        label.text = "STATISTICS"
        label.font = .robotoMedium24()
        label.textColor = .specialGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var segmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl(items: ["Week", "Month"])
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.backgroundColor = .specialGreen
        segmentedControl.selectedSegmentTintColor = .specialYellow
        segmentedControl.setTitleTextAttributes([.font: UIFont.robotoMedium16() as Any,
                                                 .foregroundColor: UIColor.white], for: .normal)
        segmentedControl.setTitleTextAttributes([.font: UIFont.robotoMedium16() as Any,
                                                .foregroundColor: UIColor.specialGray], for: .selected)
        segmentedControl.addTarget(self, action: #selector(segmentedChange), for: .valueChanged)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        return segmentedControl
    }()
    
    private let exercisesLabel = UILabel(text: "Exercises")
    private let statisticsTableView = StatisticsTableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        view.backgroundColor = .specialBackground
        
        view.addSubview(statisticLabel)
        view.addSubview(exercisesLabel)
        view.addSubview(statisticsTableView)
        view.addSubview(segmentedControl)
    }
    
    @objc private func segmentedChange() {
    
    }
    
}

extension StatisticViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            statisticLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            statisticLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            
            segmentedControl.topAnchor.constraint(equalTo: statisticLabel.bottomAnchor, constant: 20),
            segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            exercisesLabel.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 10),
            exercisesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            statisticsTableView.topAnchor.constraint(equalTo: exercisesLabel.bottomAnchor),
            statisticsTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            statisticsTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            statisticsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            
        ])
    }
}
