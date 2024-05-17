import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

fun main() {   
    val currentDateTime = LocalDateTime.now()

    val formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")
    
    val currentTime: String = currentDateTime.format(formatter)

    println("Current Time: $currentTime")
}
