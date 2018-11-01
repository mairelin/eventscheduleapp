import 'speaker.dart';
import 'talk.dart';

class Schedule {
  final String day;
  final String hour;
  final Speaker speaker;
  final Talk talk;
  final String area;
  final DateTime time;

  Schedule({this.day, this.hour, this.speaker, this.talk, this.area, this.time});
}
