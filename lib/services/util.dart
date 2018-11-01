import 'package:eventscheduleapp/domain/schedule.dart';
import 'package:eventscheduleapp/services/scheduleservice.dart';
import 'package:eventscheduleapp/services/schedulefactory.dart';


List<Schedule> checkCurrentAndNextTalk() {
  
  ScheduleService srv = ScheduleFactory();
  DateTime now = new DateTime.now();
  Map scs = srv.getScheduleList();
  scs.forEach((k, v) => (checkTime(v)));
  
}


List<Schedule> checkTime(List<Schedule> scs) {
  //scs.forEach((sch) => sch.time.com)

}

