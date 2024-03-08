void main() {
  
  final hobbies = ["Reading", "Hiking", "Coding", "Playing Games"];

  
  print("My hobbies: $hobbies");

  
  hobbies.add("Cooking");
  print("Added 'Cooking' to the list: $hobbies");

  
  hobbies.remove("Playing Games");
  print("Removed 'Playing Games': $hobbies");

  
  if (!hobbies.isEmpty) {
    print("Sorting hobbies alphabetically...");
    hobbies.sort(); 
    print("Hobbies sorted: $hobbies");
  } else {
    print("The hobbies list is empty.");
  }
}
