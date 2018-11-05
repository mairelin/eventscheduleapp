import 'package:opensaturday/schedule_list.dart';
import 'package:opensaturday/services/schedulefactory.dart';
import 'package:opensaturday/services/scheduleservice.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/animation.dart';

class HomeSchedule extends StatefulWidget {
  @override
  State createState() => _HomeSchedule();
}

class _HomeSchedule extends State<HomeSchedule> with SingleTickerProviderStateMixin{
  Map days;
  ScheduleService srv = ScheduleFactory();
  List<Tab> tabs = List();
  List<ScheduleList> schedule = List();

  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    days = srv.getScheduleList();
    days.forEach((k, v) => tabs.add(Tab(
          text: k,
//          icon: Icon(Icons.schedule),
        )));
    days.forEach((k, v) => schedule.add(ScheduleList(schedule: v)));
    controller = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
    animation = Tween(begin: 0.1, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: new TabBar(tabs: tabs),
      body: Opacity(
        opacity: animation.value,
        child: DefaultTabController(
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
      ),

    );
  }

  dispose() {
    controller.reverse();
    controller.dispose();
    super.dispose();
  }
}
