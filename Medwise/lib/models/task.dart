class Task {
  final String title;
  final String description;
  final DateTime date;
  final DateTime time;
  final String tag;
  bool taskDone;

  Task(
      {this.title,
      this.description,
      this.date,
      this.time,
      this.tag,
      this.taskDone});
}
