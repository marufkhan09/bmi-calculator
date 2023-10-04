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
    
    var calcBrain = CalculatorBrain()
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
     //   self.performSegue(withIdentifier: "gotoresult", sender: self)
        calcBrain.calculateBmi(weight: weightVal.value, height: heightVal.value)
 
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "gotoresult"){
          let  destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calcBrain.getBMIValue()
            destinationVC.advice =  calcBrain.getAdvice()
            destinationVC.color = calcBrain.getColor()
        }
    }
}

