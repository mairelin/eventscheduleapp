import 'package:flutter/material.dart';

import 'schedule_detail.dart';

class ScheduleList extends StatefulWidget {

  List<dynamic> schedule;

  ScheduleList({Key key, this.schedule}) : super(key: key);

  @override
  _ScheduleListState createState() => _ScheduleListState(this.schedule);

}

class _ScheduleListState extends State<ScheduleList> {

  List<dynamic> schedule;
  Color itemBackGround;

  _ScheduleListState(this.schedule);

  @override
  void initState() {
    this.itemBackGround = Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: schedule.length == 0 ? 0 : schedule.length,

        itemBuilder: (BuildContext context, int index) {
          dynamic sc = schedule[index];
          return new GestureDetector(

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScheduleDetail(selectedItem: sc)),
              );
            },
            child:  Column (
                children: <Widget>[
                   Padding(padding:  new EdgeInsets.all(0.0),
                    child:
                    Container(
                      color: sc['open'] ? Colors.indigo : Colors.white,
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: Padding(padding: EdgeInsets.only(right: 10.0 ),
                                child: Container(
                                  decoration: new BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: new DecorationImage(
                                          fit: BoxFit.fill,
                                          image: NetworkImage(sc['speaker']['photo']))
                                  ),
                                  height: 60.0,
                                  width: 60.0,

                                )),
                            title:  Text(sc['speaker']['name'],
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0, color: Colors.blueGrey)),
                            subtitle:  Text(sc['talk_name']),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(right: 10.0),
                                  child: Text("${sc['starttime']} hola", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0)))
                            ],
                          ),
                          new Divider(height: 15.0,color: Colors.grey)
                        ],
                      ),
                    ),
                  ),
                ]
            ),
          );
        },
      ),
    );
  }
}


