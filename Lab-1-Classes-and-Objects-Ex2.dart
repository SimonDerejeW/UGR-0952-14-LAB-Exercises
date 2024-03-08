class Person {
  String name;
  int age;
  String address;

  Person({required this.name, required this.age, required this.address});
}

class Student extends Person {
  int rollNumber;
  List<int> marks;

  Student({
    required String name,
    required int age,
    required String address,
    required this.rollNumber,
    required this.marks,
  }) : super(name: name, age: age, address: address);

  
  int calculateTotalMarks() {
    final total = marks.fold(0, (sum, mark) => sum + mark);
    return total;
  }

  
  double calculateAverage() {
    if (marks.isEmpty) {
      return 0.0;
    }
    final total = calculateTotalMarks();
    final average = total / marks.length;
    return average;
  }
}

void main() {
  
  final student1 = Student(
      name: "Alice",
      age: 18,
      address: "123 Main St",
      rollNumber: 101,
      marks: [85, 90, 78]);

  final student2 = Student(
      name: "Bob",
      age: 19,
      address: "456 Elm St",
      rollNumber: 102,
      marks: [92, 88, 80]);

  
  print("Student 1:");
  print("Name: ${student1.name}"); 
  print("Age: ${student1.age}");   
  print("Address: ${student1.address}"); 
  print("Roll Number: ${student1.rollNumber}");
  print("Marks: ${student1.marks}");

  
  final totalMarks1 = student1.calculateTotalMarks();
  final average1 = student1.calculateAverage();

  print("\nTotal Marks: $totalMarks1");
  print("Average: $average1");

  final totalMarks2 = student2.calculateTotalMarks();
  final average2 = student2.calculateAverage();

  print("\nStudent 2:");
  print("Total Marks: $totalMarks2");
  print("Average: $average2");
}
