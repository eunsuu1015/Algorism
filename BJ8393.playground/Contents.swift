import Foundation

let n = Int(readLine()!)!
var num = 1
var hap = 0

while num <= n {
    hap += num
    num += 1
}
print(hap)
