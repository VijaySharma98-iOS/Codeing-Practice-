import UIKit

var str = "hello"
var reserse = ""


for char in str {
    reserse = String(char) + reserse
}
//print(reserse)


func fibonacci(n: Int) {
    var arr:[Int] = []
    
    var a = 0
    var b = 1
    
    for value in 0..<n {
        if value == 0 {
            arr.append(a)
        } else if value == 1 {
            arr.append(b)
        } else {
            var c = a + b
            arr.append(c)
            a = b
            b = c
        }
    }
    //print(arr)
}

//fibonacci(n: 10)


func leapYear(_ year: Int) -> Bool {
    
    if year % 400 == 0 {
       return true
   } else if year % 100 == 0 {
       return false
   } else if year % 4 == 0 {
       return true
   } else {
        return false
    }
}
//print(leapYear(1968))


func existsHigher(_ arr: [Int], _ n: Int) -> Bool {
        
    for number in arr {
        if number >= n {
            return true
        }
    }
    return false
}
//print(existsHigher([5, 3, 15, 22, 4], 10))
//print(existsHigher([1, 2, 3, 4, 5], 8))
//print(existsHigher([], 10))


//Add up the Numbers from a Single Number
func addUp(_ num: Int) -> Int {
    var totalNumber = 0
    for number in 1...num {
        totalNumber += number
    }
    return totalNumber
}
//print((addUp(4)))


//Find the Smallest and Biggest Numbers
//My Logic
func minMax(_ arr: [Double]) -> [Double] {
    let maxValue = Double(arr.max() ?? 0)
    let minValue = Double(arr.min() ?? 0)
    return [minValue, maxValue]
}


//Improved Logic
func minMax2(_ arr: [Double]) -> [Double] {
    
    var minValue = arr[0]
    var maxValue = arr[0]
    
    for num in arr {
        if num < minValue { minValue = num }
        if num > maxValue { maxValue = num }
    }
    return [minValue, maxValue]
}

print(minMax([1, 2, 3, 4, 5]))
print(minMax2([1, 2, 3, 4, 5]))
