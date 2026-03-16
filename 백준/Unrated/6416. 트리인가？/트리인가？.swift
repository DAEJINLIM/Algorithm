import Foundation

var k = 1
var work = true
var pass = false
var tree = [[Int]]()

while work {
    guard let input = readLine() else { break }
    
    if input.isEmpty {
        continue
    }
    
    if input.contains("-1") {
        work = false
        break
    }
    
    let numbers = input.components(separatedBy: "  ").filter { $0 != "  " }.map { $0.split(separator: " ") }.map { $0.map { Int(String($0))! } }
    
    if pass {
        if numbers.contains([0, 0]) {
            pass = false
        }
        continue
    }
    
    for node in numbers {
        let u = node[0]
        let v = node[1]
        
        if u == 0 && v == 0 {
            if tree.isEmpty {
                print("Case \(k) is a tree.")
            } else {
                let parents = Set(tree.map { $0[0] })
                let children = Set(tree.map { $0[1] })
                let roots = parents.subtracting(children)
                let nodes = Set(tree.flatMap { [$0[0], $0[1]] })
                
                if roots.count == 1 && tree.count == nodes.count - 1 {
                    print("Case \(k) is a tree.")
                } else {
                    print("Case \(k) is not a tree.")
                }
            }
            
            clearTree(&tree)
            break
        }
        
        if tree.map({ $0[1] }).contains(v) {
            print("Case \(k) is not a tree.")
            clearTree(&tree)
            pass = true
            break
        } else {
            tree.append([u, v])
        }
    }
}

func clearTree(_ tree: inout [[Int]]) {
    k += 1
    tree.removeAll()
}
