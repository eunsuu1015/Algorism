import Foundation

let line: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }
var h = line[0]
var m = line[1]
let line2 = readLine() ?? ""
var time = Int(line2) ?? 0  // 0~1000

// 필요한 시간이 60분 이상이라면 시(h)를 추가
while time >= 60 {
    h += 1
    time -= 60
}
m += time   // 필요한 시간 중 분(m)을 추가

// 분(m)이 60 이상이면 60분을 빼고 시(h)를 1 추가
if m >= 60 {
    m -= 60
    h += 1
}

// 시(h)가 24 이상이면 0시부터 계산
if h >= 24 {
    h -= 24
}

print("\(h) \(m)")
