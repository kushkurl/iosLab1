import Foundation

func getDiscount(totalPrice: Double) -> Double {
    var discount: Double = 0.0
    if totalPrice > 1000 {
        discount = 0.1 * totalPrice
        return discount
    }
    return discount
}

var costPrice: Double
var unit: Int
var totalCost: Double
var discount: Double

print("Enter cost price of item: ")
costPrice = Double(readLine()!)!

print("Enter number of items: ")
unit = Int(readLine()!)!

totalCost = costPrice * Double(unit)



print("Discount on total cost is: \(getDiscount(totalPrice: totalCost))")