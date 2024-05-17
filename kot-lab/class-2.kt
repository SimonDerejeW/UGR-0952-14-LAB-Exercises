class Triangle(val side1: Double, val side2: Double, val side3: Double) {
    fun isEquilateral(): Boolean {
        return side1 == side2 && side2 == side3
    }

    fun isIsosceles(): Boolean {
        return side1 == side2 || side2 == side3 || side1 == side3
    }

    fun isScalene(): Boolean {
        return !isEquilateral() && !isIsosceles()
    }
}

