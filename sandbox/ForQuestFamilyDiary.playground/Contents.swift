import UIKit

let array = [3,2,1,5,6,3]
var retArray: [Int] = []
for item in array {
    retArray.append(item*2)
}
print(retArray)

let retArray2 = array.map{(item) -> Int in
    item * 2
}

print(retArray2)

