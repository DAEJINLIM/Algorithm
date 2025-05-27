import Foundation

func solution(_ arr:[Int], _ idx:Int) -> Int {
    let newArr = arr[idx..<arr.count]
    return newArr.contains(1) ? newArr.firstIndex(of: 1)! : -1
}