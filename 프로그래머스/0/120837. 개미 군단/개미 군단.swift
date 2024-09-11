import Foundation

func solution(_ hp:Int) -> Int {
    return hp / 5 + (hp % 5 == 0 ? 0 : (hp % 5) / 3) + (((hp % 5) % 3) == 0 ? 0 : ((hp % 5) % 3) / 1)
}