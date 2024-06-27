import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var lastLeft = (3, 0)
    var lastRight = (3, 2)
    var result = [String]()
    
    for i in numbers {
        if i == 1 || i == 4 || i == 7 {
            
            result.append("L")
            lastLeft = i == 1 ? (0, 0) : i == 4 ? (1, 0) : (2, 0)
            
        } else if i == 3 || i == 6 || i == 9 {
            
            result.append("R")
            lastRight = i == 3 ? (0, 2) : i == 6 ? (1, 2) : (2, 2)
            
        } else {
            let touch = i == 2 ? (0, 1) : i == 5 ? (1, 1) : i == 8 ? (2, 1) : (3,1)
            if lastLeft.0 == 10 {
                result.append("R")
                lastRight = touch
            }
            if lastRight.0 == 10 {
                result.append("L")
                lastLeft = touch
            }
            
            let leftDistance = abs((touch.0 - lastLeft.0)) + abs((touch.1 - lastLeft.1))
            let rightDistance = abs((touch.0 - lastRight.0)) + abs((touch.1 - lastRight.1))

            if leftDistance == rightDistance {
                if hand == "right" {
                    result.append("R")
                    lastRight = touch
                } else {
                    result.append("L")
                    lastLeft = touch
                }
            } else if leftDistance > rightDistance {
                result.append("R")
                lastRight = touch
            } else {
                result.append("L")
                lastLeft = touch
            }
        }
        print(lastLeft, lastRight)
    }
    
    return result.joined()
}