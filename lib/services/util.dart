import 'package:opensaturday/domain/schedule.dart';
import 'package:opensaturday/services/scheduleservice.dart';
import 'package:opensaturday/services/schedulefactory.dart';


List<Schedule> checkCurrentAndNextTalk() {
  
  ScheduleService srv = ScheduleFactory();
  DateTime now = new DateTime.now();
  Map scs = srv.getScheduleList();
  scs.forEach((k, v) => (checkTime(v)));
  
}


List<Schedule> checkTime(List<Schedule> scs) {
  //scs.forEach((sch) => sch.time.com)

}

