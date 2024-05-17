fun factorial(n: Int): Long {
    return if (n == 0 || n == 1) {
        1
    } else {
        n.toLong() * factorial(n - 1)
    }
}
