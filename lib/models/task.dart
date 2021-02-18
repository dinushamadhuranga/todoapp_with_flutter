class Task {
  Task(this._title);

  String _title;
  DateTime _dateTime = DateTime.now();
  DateTime _completeTime;
  bool _status = false;

  void changeStatus() {
    _status = !_status;
  }

  bool get status => _status;

  DateTime get completeTime => _completeTime;

  DateTime get dateTime => _dateTime;

  String get title => _title;
}
