class ShoppingCart {
    private val items = mutableMapOf<String, Int>()

    fun addItem(itemName: String, quantity: Int) {
        if (quantity > 0) {
            items[itemName] = items.getOrDefault(itemName, 0) + quantity
            println("$quantity $itemName(s) added to the cart.")
        } else {
            println("Invalid quantity. Please provide a positive quantity.")
        }
    }

    fun removeItem(itemName: String, quantity: Int) {
        if (items.containsKey(itemName)) {
            val currentQuantity = items[itemName]!!
            if (quantity < currentQuantity) {
                items[itemName] = currentQuantity - quantity
                println("$quantity $itemName(s) removed from the cart.")
            } else {
                items.remove(itemName)
                println("All $itemName(s) removed from the cart.")
            }
        } else {
            println("$itemName not found in the cart.")
        }
    }

    fun calculateTotalPrice(prices: Map<String, Double>): Double {
        var totalPrice = 0.0
        for ((itemName, quantity) in items) {
            val price = prices[itemName] ?: 0.0
            totalPrice += price * quantity
        }
        return totalPrice
    }
}

