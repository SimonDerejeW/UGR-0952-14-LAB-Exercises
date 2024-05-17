fun main() {
    fun isPrime(num: Int): Boolean {
        if (num <= 1) {
            return false
        }
        var divisor = 2
        while (divisor * divisor <= num) {
            if (num % divisor == 0) {
                return false
            }
            divisor++
        }
        return true
    }
    val start = 1
    val end = 50

    println("Prime numbers within the range $start to $end:")
    var currentNumber = start
    while (currentNumber <= end) {
        if (isPrime(currentNumber)) {
            println(currentNumber)
        }
        currentNumber++
    }
}
