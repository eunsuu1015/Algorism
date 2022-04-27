import Foundation

let num = Int(readLine() ?? "") ?? 0

for _ in 0..<num {
    let get: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }
    print(get[0] + get[1])
}
