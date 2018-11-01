import 'package:flutter/material.dart';
import 'package:eventscheduleapp/services/schedulefactory.dart';
import 'package:eventscheduleapp/services/scheduleservice.dart';
import 'schedule_list.dart';
import 'logo.dart';

class ScheduleTab extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _ScheduleTab();

}

class _ScheduleTab extends State<ScheduleTab> {

  Map days;
  ScheduleService srv = ScheduleFactory();
  List<Tab> tabs = List();
  List<ListPage> schedule = List();

  @override
  void initState() {
    days = srv.getScheduleList();
    days.forEach((k, v) => tabs.add(Tab(text: k, icon: Icon(Icons.schedule),)));
    days.forEach((k, v) => schedule.add(ListPage(schedule: v)));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: tabs.length == 0 ? 0 : tabs.length,
        child: Scaffold(
          backgroundColor: Colors.black87,
          appBar: new PreferredSize(
              child: Padding(padding: EdgeInsets.only(top: 20.0), child: Image.asset("images/logo.png")),
              preferredSize: const Size.fromHeight(100.0),

          ),
          body: TabBarView(
            children: schedule
          ),
          bottomNavigationBar: TabBar(tabs: tabs),

        ),
      ),
    );
  }


}
