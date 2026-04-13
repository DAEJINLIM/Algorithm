var n = Int(readLine()!)!

n % 4 == 0 ? (n % 100 != 0 || n % 400 == 0) ? print(1) : print(0) : print(0)
