class Student {
  final String name;
  final List<int> marks;

  Student(this.name, this.marks);

  double get averageMark {
    if (marks.isEmpty) {
      return 0.0; 
    }
    final total = marks.reduce((a, b) => a + b); 
    return total / marks.length;
  }
}

