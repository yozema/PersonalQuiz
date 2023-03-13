//
//  RsultViewController.swift
//  PersonalQuiz
//
//  Created by Ilya Zemskov on 12.03.2023.
//

import UIKit

final class ResultViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var animalResultLabel: UILabel!
    @IBOutlet var descriptionResultLabel: UILabel!
    
    var answers: [Answer] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        updateResult()
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    // MARK: - Result calculation
    private func updateResult() {
        var frequencyOfAnimals: [Animal : Int] = [:]
        let animals = answers.map { $0.animal }
        
        for animal in animals {
            frequencyOfAnimals[animal, default: 0] += 1
        }
        
        let sortedAnimals = frequencyOfAnimals.sorted { $0.value > $1.value }
        guard let mostFrequentAnimal = sortedAnimals.first?.key else { return }
        
        updateUI(with: mostFrequentAnimal)
    }
    
    private func updateUI(with animal: Animal) {
        animalResultLabel.text = "Вы - \(animal.rawValue)"
        descriptionResultLabel.text = animal.definition
    }
}
