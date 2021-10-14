import Foundation

func isLeapYear(year: Int) {
    if year % 4 == 0 {
        if year % 100 == 0 {
            if year % 400 == 0 {
                print("Year: \(year) is a leap year.")
            }
        }
        print("Year: \(year) is a leap year.")
    }
    else {
        print("Year: \(year) is NOT a leap year.")
    }
    
}

var year: Int

print("Enter the year: ")
year = Int(readLine()!)!

isLeapYear(year: year)
