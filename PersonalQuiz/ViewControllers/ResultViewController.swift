//
//  RsultViewController.swift
//  PersonalQuiz
//
//  Created by Ilya Zemskov on 12.03.2023.
//

import UIKit

final class ResultViewController: UIViewController {
    
    var answers: [Answer] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
}
