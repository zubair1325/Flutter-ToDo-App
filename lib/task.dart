class Task {
  String details;
  DateTime createDateTime, updateDateTime;
  String status;

  Task({
    required this.details,
    required this.createDateTime,
    required this.updateDateTime,
    this.status = "pending",
  });
}
