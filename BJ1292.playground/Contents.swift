import Foundation

let line = readLine() ?? ""
//let line = "3 7"  // test
let lineArr = line.split(separator: " ")
let a: Int = Int(lineArr[0]) ?? 0
let b: Int = Int(lineArr[1]) ?? 0
var arr: Array<Int> = []

for i in 1..<1001 {
    for _ in 1..<i+1 {
        arr.append(i)
    }
}

var result = 0
for i in a-1..<b {
    result = result + arr[i]
}

print(result)
