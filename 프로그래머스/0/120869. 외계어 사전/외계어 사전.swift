import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    var count = 2
    let spellSort = spell.joined().sorted()
    for i in dic {
        if i.sorted() == spellSort {
            count = 1
        }
    }
    return count
}