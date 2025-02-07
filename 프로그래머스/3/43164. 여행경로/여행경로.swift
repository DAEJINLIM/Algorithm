import Foundation

func solution(_ tickets: [[String]]) -> [String] {
    var graph: [String: [String]] = [:]
    
    var sortedTickets = tickets.sorted { $0[1] < $1[1] }
    
    for ticket in sortedTickets {
        graph[ticket[0], default: []].append(ticket[1])
    }
    
    var route: [String] = []
    
    func dfs(_ airport: String) {
        while let next = graph[airport]?.first {
            graph[airport]?.removeFirst()
            dfs(next)
        }
        route.append(airport)
    }
    
    dfs("ICN")
    return route.reversed()
}
