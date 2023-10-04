//
//  calculatorBrain.swift
//  BMI-Calculator
//
//  Created by Misfit Technologies LTD. on 4/10/23.
//

import Foundation
import UIKit

struct CalculatorBrain{
    var bmi: BMI?
    
    func getBMIValue()->String{
        if let bmiVal = bmi {
            let bmiDec = String(format: "%.1f", bmiVal.value)
            return bmiDec
        }else {
            return "0.0"
        }
    }
    
    func getAdvice()->String{
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor()->UIColor{
        return bmi?.color ?? UIColor.white
    }
    
    mutating func   calculateBmi(weight: Float,height: Float){
        let bmiValue =  weight / pow(height, 2)
        
        if(bmiValue < 18.5){
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.blue)
        }else if(bmiValue >= 18.5 && bmiValue <= 24.9){
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green)
            
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.red)
            
        }
    }
    
    
    
    
    
}
