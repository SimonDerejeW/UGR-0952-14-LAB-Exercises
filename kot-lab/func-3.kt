fun hasUniqueCharacters(input: String): Boolean {
    val charSet = HashSet<Char>()
    for (char in input) {
        if (charSet.contains(char)) {
            return false
        }
        charSet.add(char)
    }
    return true
}