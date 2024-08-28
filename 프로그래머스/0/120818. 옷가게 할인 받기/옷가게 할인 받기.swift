import Foundation

func solution(_ price:Int) -> Int {
    return price >= 500000 ? price * 8 / 10 : price >= 300000 ? price * 9 / 10 : price >= 100000 ? price * 95 / 100 : price
}