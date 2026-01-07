import UIKit

var str = "hello"
var reserse = ""


for char in str {
    reserse = String(char) + reserse
}
print(reserse)
