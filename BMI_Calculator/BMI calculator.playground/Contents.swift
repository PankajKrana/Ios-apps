import UIKit

func calcBMI (weight: Double , height: Double) -> String{
    let bmi = weight / pow(height, 2)
    
    
    let sorternBMI = String(format: "%.2f", bmi)
    
    var interpretation = ""
    
    if bmi > 25 {
        print( "overweight")
    }
    else if bmi > 18.5 {
        interpretation = "You have a normal weight"
    }
    else {
        interpretation = "You are underweight"    }
    return "Your BMI is \(sorternBMI) and \(interpretation) "
}

var bmiResult = calcBMI(weight: 50, height: 1.6)
print(bmiResult)
