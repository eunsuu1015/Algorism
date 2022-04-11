import Foundation

let intArr: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }
var h = intArr[0]
var m = intArr[1]

m = m - 45
if (m < 0) {
    h = h - 1
    m = 60 - (-m)
}

if (h < 0) {
    h = 24 - (-h)
}

print("\(h) \(m)")
