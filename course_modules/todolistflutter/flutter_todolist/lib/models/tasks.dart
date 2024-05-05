class Task {
  final String title;
  final String? description;
  final String dueDate;
  bool completed;

  Task({
    required this.title,
    this.description,
    required this.dueDate,
    this.completed = false,
  });

  // Factory constructor to create Task object from a map
  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      title: map['title'],
      description: map['description'],
      dueDate: map['due_date'],
      completed: map['completed'] ?? false,
    );
  }

  // Method to convert Task object to a map
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'due_date': dueDate,
      'completed': completed,
    };
  }
}
