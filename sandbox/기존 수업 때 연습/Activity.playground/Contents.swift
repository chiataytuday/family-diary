import UIKit

let array = [3,2,1,5,6,3,10,2]

//Q1.  for문, map을 활용하여 배열의 값들에 x2를 하시오
let retArray1 = array.map{(item) -> Int in
    item * 2
}

print(retArray1)

//Q2. for문, filter를 활용하여 3 이상인 값을 나열하시오
let retArray2 = array.filter({(arg: Int) -> Bool in
    return arg >= 3
})

print(retArray2)

//Q3. for문, map, reduce 활용문제. 전체의 값을 2배한 후, 5 이상인 값을 나열하시오
let retArray3 = array.map{(item) -> Int in item * 2 }.filter({(arg: Int) -> Bool in
    return arg >= 5
})

print (retArray3)

// Q4. 아래 코드랑 동일한 코드를 map으로 만드세요
let strings = ["apple", "banana", "dreamin"]
var strings2: [Int] = []

for item in strings {
    strings2.append(item.count)
}

//
func sumAll(result:Int, arg: Int) -> Int {
    return result + arg
}

let ret = array.reduce(0,sumAll)

let ret2 = array.reduce(0) {(result,item) -> Int in
    return result + item
}
