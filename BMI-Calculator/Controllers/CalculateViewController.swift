//
//  ViewController.swift
//  BMI-Calculator
//
//  Created by Maruf Khan on 2/10/23.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var weightVal: UISlider!
    @IBOutlet weak var heightVal: UISlider!
    
    var bmiVal = "0.0"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        
        height.text =  "\(floor(sender.value * 100) / 100.0 )m"
    }
    @IBAction func weightSlider(_ sender: UISlider) {
        weight.text = "\(Int(sender.value))kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        bmiVal = String(format: "%.1f", weightVal.value / pow(heightVal.value, 2))
     //   self.performSegue(withIdentifier: "gotoresult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "gotoresult"){
          let  destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiVal

     
        }
    }
}

