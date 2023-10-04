//
//  ResultViewController.swift
//  BMI-Calculator
//
//  Created by Maruf Khan on 3/10/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var sugLabel: UILabel!
    var color : UIColor?
    var advice: String?
    var bmiValue: String?
    override func viewDidLoad() {
        
        bmiLabel.text = bmiValue
        sugLabel.text = advice
        view.backgroundColor = color

        super.viewDidLoad()
    }

    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
}
