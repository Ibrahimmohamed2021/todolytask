class Task {
  int? id;
  final String taskName;
  bool isDone;
  DateTime? startTime;
  DateTime? endTime;
  DateTime? finishTime;
  Task({required this.taskName, this.isDone = false, this.id, this.startTime, this.endTime, this.finishTime});
  factory Task.fromMap(Map<String, dynamic> data) {
    return Task(
      taskName: data['name'],
      isDone: data['is_done'],
      startTime: data["start_time"],
      id: data['id'],
      endTime:data['end_time'],
      finishTime: data['finish_Time'],
    );
  }
  Map<String, dynamic> toMap() {
    return {
      "name": taskName,
      "is_done": isDone,
      "start_time": startTime,
      "id": id,
      "end_time": endTime,
    };
  }
}