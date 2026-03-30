let n = Int(readLine()!)!

if n == 1 || n == 3 {
    print(-1)
} else {
    let count5 = n / 5
    let remain = n % 5
    
    if remain == 0 {
        print(count5)
    } else if remain == 1 || remain == 3 {
        print((count5 - 1) + (remain + 5) / 2)
    } else {
        print(count5 + remain / 2)
    }
}