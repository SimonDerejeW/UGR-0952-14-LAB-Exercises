fun main() {
    fun isPalindrome(number: Int): Boolean {
        var originalNumber = number
        var reversedNumber = 0

        var temp = originalNumber
        while (temp != 0) {
            val remainder = temp % 10
            reversedNumber = reversedNumber * 10 + remainder
            temp /= 10
        }

        return originalNumber == reversedNumber
    }

}
