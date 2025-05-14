class Task {
  String action;
  String title;
  String description;
  DateTime dateTime;

  Task({
    required this.action,
    required this.title,
    required this.description,
    required this.dateTime,
  });

  factory Task.fromJson(Map<String, dynamic> json) => Task(
    title: json['title'],
    action: json['action'],
    description: json['description'],
    dateTime:
        json['dateTime'] != null
            ? DateTime.tryParse(json['dateTime'])!
            : DateTime.now(),
  );

  Map<String, dynamic> toJson() => {
    'title': title,
    'action': action,
    'description': description,
    'dateTime': dateTime.toIso8601String(),
  };
}
