import UIKit

class StatisticViewController: UIViewController {
    
    private let statisticsLabel: UILabel = {
        let label = UILabel()
        label.text = "STATISTICS"
        label.font = .robotoMedium24()
        label.textColor = .specialGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let exercisesLabel = UILabel(text: "Exercises")
    private let statisticsTableView = StatisticsTableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        view.backgroundColor = UIColor(red: 240/250, green: 237/250, blue: 226/250, alpha: 1)
        
        view.addSubview(statisticsLabel)
        view.addSubview(exercisesLabel)
        view.addSubview(statisticsTableView)
    }
}

extension StatisticViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            statisticsLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            statisticsLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            
            exercisesLabel.topAnchor.constraint(equalTo: statisticsLabel.bottomAnchor, constant: 75),
            exercisesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            statisticsTableView.topAnchor.constraint(equalTo: exercisesLabel.bottomAnchor, constant: 10),
            statisticsTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            statisticsTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            statisticsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
