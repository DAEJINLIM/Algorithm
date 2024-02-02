import Foundation

// 방의 크기 N, M
let sizeInput = readLine()!.split(separator: " ").map { Int($0)! }
let N = sizeInput[0]
let M = sizeInput[1]

// 로봇 청소기의 초기 위치와 방향
let robotInfo = readLine()!.split(separator: " ").map { Int($0)! }
var robotRow = robotInfo[0]
var robotCol = robotInfo[1]
var robotDir = robotInfo[2]

// 방의 상태
var room = [[Int]]()

for _ in 0..<N {
    let rowInput = readLine()!.split(separator: " ").map { Int($0)! }
    room.append(rowInput)
}

// 방향별로 이동할 좌표 정의 (북, 동, 남, 서)
let dr = [-1, 0, 1, 0]
let dc = [0, 1, 0, -1]

// 청소된 영역 개수
var cleanedCount = 0

while true {
    // 현재 위치 청소
    if room[robotRow][robotCol] == 0 {
        room[robotRow][robotCol] = 2  // 2로 청소 표시
        cleanedCount += 1
    }

    // 주변 확인
    var allCleaned = true
    for _ in 0..<4 {
        let nextDir = (robotDir + 3) % 4  // 현재 방향에서 왼쪽 방향
        let nextRow = robotRow + dr[nextDir]
        let nextCol = robotCol + dc[nextDir]

        // 청소하지 않은 빈 칸이 존재하면 이동
        if room[nextRow][nextCol] == 0 {
            robotRow = nextRow
            robotCol = nextCol
            robotDir = nextDir
            allCleaned = false
            break
        }

        robotDir = nextDir  // 방향 갱신
    }

    // 네 방향 모두 청소되었거나 벽인 경우 후진
    if allCleaned {
        let backDir = (robotDir + 2) % 4
        let backRow = robotRow + dr[backDir]
        let backCol = robotCol + dc[backDir]

        // 후진할 수 있는 경우 이동
        if room[backRow][backCol] != 1 {
            robotRow = backRow
            robotCol = backCol
        } else {
            break  // 후진할 수 없으면 종료
        }
    }
}

print(cleanedCount)
