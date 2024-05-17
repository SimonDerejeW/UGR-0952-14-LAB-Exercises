fun main() {
    fun findLargest(num1: Int, num2: Int, num3: Int): Int {
        return if (num1 > num2) {
            if (num1 > num3) {
                num1
            } else {
                num3
            }
        } else {
            if (num2 > num3) {
                num2
            } else {
                num3
            }
        }
    }
}
