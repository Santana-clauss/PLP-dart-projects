class Task {
  final String id;
  final String? username;
  final String password;
  

  Task({
    required this.id,
    this.username,
    required this.password,
   
  });

  // Factory constructor to create Task object from a map
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      username: map['username'],
      password: map['password'],
      //completed: map['completed'] ?? false,
    );
  }

  // Method to convert Task object to a map
  Map<String, dynamic> toMap() {
    return {
      'id': title,
      'description': description,
      'due_date': dueDate,
      'completed': completed,
    };
  }
}
