import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:opensaturday/schedule_list.dart';
import 'package:opensaturday/services/schedulefactory.dart';
import 'package:opensaturday/services/scheduleservice.dart';

class HomeSchedule extends StatefulWidget {
  @override
  State createState() => _HomeSchedule();
}

class _HomeSchedule extends State<HomeSchedule>
    with SingleTickerProviderStateMixin {
  Map days;
  ScheduleService srv = ScheduleFactory();
  List<Tab> tabs = List();
  List<ScheduleList> schedule = List();

  Animation<double> animation;
  AnimationController controller;
  var _subs;

  @override
  void initState() {
//    days = srv.getScheduleList();
//    days.forEach((k, v) => tabs.add(Tab(
//          text: k,
////          icon: Icon(Icons.schedule),
//        )));
//    days.forEach((k, v) => schedule.add(ScheduleList(schedule: v)));
    controller = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
    animation = Tween(begin: 0.1, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });
    controller.forward();
    obteniendoStreams();
  }

  obteniendoStreams() async {

//    final DocumentReference postRef = Firestore.instance.document('days/8rQbpIR2xfeRGRovjyfG');
//    Firestore.instance.runTransaction((Transaction tx) async {
//      DocumentSnapshot postSnapshot = await tx.get(postRef);
//      if (postSnapshot.exists) {
//        var ch = postSnapshot.data['talks'].add(
//            <String, dynamic>{
//              'endTime': '6 de noviembre de 2018, 16:00:00 UTC-4'
//            }
//        );
//        await tx.update(postRef, <String, dynamic>{'talks': postSnapshot.data['talks']});
//      }
//    });

    this._subs =
        Firestore.instance.collection('days').snapshots().listen((snapshot) {
//      print(snapshot.documents[0]['name'].toString());
      snapshot.documents.forEach((DocumentSnapshot doc) {
//            doc['talks'].map((DocumentSnapshot talk){
//
//            });
//      print(doc['talks'][0]['place']);
//      List<Widget> list = [];
//        for (var i = 0; i < doc['talks'].length; i++) {
////          print(doc['talks'][i]['place']);
//          list.add(
//              Container(
//                child: Column(
//                  children: <Widget>[
//                    Text(doc['talks'][i]['place']),
//                    Text(doc['talks'][i]['talk_name']),
//                    Text(doc['talks'][i]['speaker']['twitter']),
//                  ],
//                ),
//              )
//          );
//        }
//        Widget el = ListView(
//          children: list,
//        );
        setState(() {
//              tabs.removeLast();
          this.schedule.clear();
          this.tabs.clear();
          this.schedule.add(ScheduleList(schedule: doc['talks'],));
          this.tabs.add(Tab(
            text: doc['name'],
          ));
//          print(this.schedule.length);
//          print(this.tabs.length);
        });
      });

    });
//    print(this.schedule.length);
//    print(this.tabs.length);
  }

//  @override
//  Widget build(BuildContext context) {
//    return StreamBuilder<QuerySnapshot>(
//      stream: Firestore.instance.collection('days').snapshots(),
//      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//        if (snapshot.hasError)
//        return new Text('Error: ${snapshot.error}');
//        switch (snapshot.connectionState) {
//          case ConnectionState.waiting: return Container(child: Center(child: new CircularProgressIndicator()));
//          default:
//            return new ListView(
//              children: snapshot.data.documents.map((DocumentSnapshot document) {
//                return new ListTile(
//                  title: new Text(document['name']),
//                );
//              }).toList(),
//            );
//        }
//      },
//    );
//  }

  @override
  Widget build(BuildContext context) {
    if(tabs.length == 0) return Container(child: Center(child: CircularProgressIndicator(),),);
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
                      tabs: tabs),
                ),
              ),
              body: TabBarView(children: schedule),
            )),
      ),
    );
  }

  dispose() {
    controller.reverse();
    controller.dispose();
    this._subs.cancel();
    super.dispose();
  }
}
