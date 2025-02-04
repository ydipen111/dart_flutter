class Student {
  final String id;       // Unique student ID
  final String name;     // Student's name
  final String email;    // Student's email address
  final String studentClass; // Student's class (e.g., 10th Grade)
  final int rollNo;      // Student's roll number in the class

  // Constructor to initialize the properties
  Student({
    required this.id,
    required this.name,
    required this.email,
    required this.studentClass,
    required this.rollNo,
  });

  // Factory constructor to create a Student from a JSON Map
  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      studentClass: json['class'],
      rollNo: json['rollNo'],
    );
  }

  // Method to create a new Student with updated properties using copyWith
  Student copyWith({
    String? id,
    String? name,
    String? email,
    String? studentClass,
    int? rollNo,
  }) {
    return Student(
      id: id ?? this.id,                           // Keeps the existing id if not provided
      name: name ?? this.name,                     // Keeps the existing name if not provided
      email: email ?? this.email,                  // Keeps the existing email if not provided
      studentClass: studentClass ?? this.studentClass, // Keeps the existing class if not provided
      rollNo: rollNo ?? this.rollNo,               // Keeps the existing rollNo if not provided
    );
  }
}
