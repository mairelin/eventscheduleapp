import 'package:meta/meta.dart';

import 'speaker.dart';
import 'talk.dart';

class Schedule {
  final String day;
  final String hour;
  final Speaker speaker;
  final Talk talk;
  final String area;
  final DateTime startTime;
  final DateTime endTime;

  Schedule({this.day, this.hour, this.speaker,
    this.talk, this.area,
  @required this.startTime,
  @required this.endTime});

  bool isOpen() {
    var time = DateTime.now();
    return time.isAfter(this.startTime)
        && time.isBefore(this.endTime);
  }

}
