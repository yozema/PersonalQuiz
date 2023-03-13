//
//  RsultViewController.swift
//  PersonalQuiz
//
//  Created by Ilya Zemskov on 12.03.2023.
//

import UIKit

final class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
}
