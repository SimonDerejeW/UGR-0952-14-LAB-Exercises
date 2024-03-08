void main() {
  
  final studentMarks = <String, int>{};

  
  studentMarks.putIfAbsent("Alice", () => 85);
  studentMarks.putIfAbsent("Bob", () => 92);
  studentMarks.putIfAbsent("Charlie", () => 78);

  print("Student marks:");
  studentMarks.forEach((name, mark) {
    print("$name: $mark");
  });

  
  final hasDavid = studentMarks.containsKey("David");
  print("Does David exist in the map: $hasDavid");
}
