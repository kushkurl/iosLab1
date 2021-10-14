import Foundation

print("Enter 5 integer values")
var sum: Int = 0
var avg: Float

for _ in 1...5 {
    let num: Int? = Int(readLine()!)
        sum += num!
}

print("Sum of numbers enterd is : \(sum)")
avg = Float(sum)/5
print("Average is : \(avg)")

