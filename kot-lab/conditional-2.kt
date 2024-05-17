fun main() {
    fun calculateTotalSalary(hoursWorked: Double, hourlyRate: Double): Double {
        val regularHours = 40.0
        val overtimeRateMultiplier = 1.5

        return if (hoursWorked <= regularHours) {
            hoursWorked * hourlyRate
        } else {
            val regularPay = regularHours * hourlyRate
            val overtimeHours = hoursWorked - regularHours
            val overtimePay = overtimeHours * hourlyRate * overtimeRateMultiplier
            regularPay + overtimePay
        }
    }
}
