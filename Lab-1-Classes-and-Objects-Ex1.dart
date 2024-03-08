class Person {
  String name;
  int age;
  String address;

  
  Person({required this.name, required this.age, required this.address});

  
  void greet() {
    print("Hello, my name is $name!");
  }
}

void main() {
  
  final person1 = Person(name: "John Doe", age: 30, address: "123 Main St");

  
  print("Person 1:");
  print("Name: ${person1.name}");
  print("Age: ${person1.age}");
  print("Address: ${person1.address}");

  person1.age++; 
  person1.greet(); 

  
  final person2 = Person(name: "Simon", age: 20, address: "Addis Ababa");
  print("\nPerson 2:");
  print("Name: ${person2.name}"); 
  print("Age: ${person2.age}");   
  print("Address: ${person2.address}"); 

  
  person2.name = "Jane Smith";
  person2.age = 25;
  person2.address = "456 Elm St";

  print("\nModified Person 2:");
  print("Name: ${person2.name}");
  print("Age: ${person2.age}");
  print("Address: ${person2.address}");
}
