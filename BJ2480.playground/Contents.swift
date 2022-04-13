import Foundation

let line: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }
var a = line[0]
var b = line[1]
var c = line[2]

func calc(_ a: Int, _ b: Int, _ c: Int) -> Int {
    if a == b && b == c {
        return 10000 + a * 1000
    } else if a == b || b == c || a == c {
        var num = a
        if b == c {
            num = b
        }
        return 1000 + num * 100
    } else {
        var big = a
        if a < b {
            big = b
            if b < c {
                big = c
            }
        } else if a < c {
            big = c
            if c < b {
                big = b
            }
        }
        return big * 100
    }
}

print(calc(a, b, c))
