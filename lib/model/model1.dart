class Student {
  late String name;
  late int age;
  late int mark;

  Student({required this.name, required this.age, required this.mark});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'age': age,
      'mark': mark,
    };
  }

  @override
  String toString() {
    return 'Student{ name: $name, age: $age,mark: $mark}';
  }
}
