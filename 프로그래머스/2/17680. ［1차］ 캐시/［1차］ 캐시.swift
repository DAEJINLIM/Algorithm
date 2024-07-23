func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    let newCities = cities.map { $0.lowercased() }
    var time = 0
    var queue = [String]()
    
    for i in newCities {
        if queue.contains(i) {
            queue.append(queue.remove(at: queue.firstIndex(of: i)!))
            time += 1
        } else {
            if queue.count == cacheSize {
                queue.append(i)
                queue.removeFirst()
                time += 5
            } else {
                queue.append(i)
                time += 5
            }
        }
    }
    
    return time
}
