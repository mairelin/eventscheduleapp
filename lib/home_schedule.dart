import 'package:opensaturday/schedule_list.dart';
import 'package:opensaturday/services/schedulefactory.dart';
import 'package:opensaturday/services/scheduleservice.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class HomeSchedule extends StatefulWidget {
  @override
  State createState() => _HomeSchedule();
}

class _HomeSchedule extends State<HomeSchedule> {
  Map days;
  ScheduleService srv = ScheduleFactory();
  List<Tab> tabs = List();
  List<ScheduleList> schedule = List();

  @override
  void initState() {
    days = srv.getScheduleList();
    days.forEach((k, v) => tabs.add(Tab(
          text: k,
//          icon: Icon(Icons.schedule),
        )));
    days.forEach((k, v) => schedule.add(ScheduleList(schedule: v)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: new TabBar(tabs: tabs),
      body: DefaultTabController(
          length: tabs.length == 0 ? 0 : tabs.length,
          child: Scaffold(
            backgroundColor: Colors.black87,
            appBar: AppBar(
              title: Text('Agenda'),
              centerTitle: true,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(20.0),
                child: TabBar(
//                  isScrollable: true,
                    tabs: tabs
                ),
              ),
            ),
            body: TabBarView(
                children: schedule
            ),

          )

      ),

    );
  }
}
