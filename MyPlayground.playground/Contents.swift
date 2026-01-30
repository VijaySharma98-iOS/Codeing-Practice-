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
    print(arr)
}

fibonacci(n: 10)
