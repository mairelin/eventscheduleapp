import 'package:flutter/material.dart';
import 'package:eventscheduleapp/domain/schedule.dart';
import 'schedule_detail.dart';

class ListPage extends StatefulWidget {

  List<Schedule> schedule;

  ListPage({Key key, this.schedule}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState(this.schedule);

}

class _ListPageState extends State<ListPage> {

  List<Schedule> schedule;

  _ListPageState(this.schedule);

  @override
  void initState() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: schedule.length == 0 ? 0 : schedule.length,
        itemBuilder: (BuildContext context, int index) {
          Schedule sc = schedule[index];
          return new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScheduleDetail(selectedItem: sc)),
                );

                },
            child:  Column (
                children: <Widget>[
                  new Padding(padding:  new EdgeInsets.all(0.0),
                      child:
                          Container(
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  leading: Padding(padding: EdgeInsets.only(right: 10.0 ),
                                      child: Container(
                                        decoration: new BoxDecoration(

                                            shape: BoxShape.circle,
                                            image: new DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(sc.speaker.photo))


                                        ),
                                        height: 60.0,
                                        width: 60.0,

                                      )),
                                  title:  Text(sc.speaker.name,
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0, color: Colors.blueGrey)),
                                 subtitle:  Text(sc.talk.name),
                                ),

                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Padding(padding: EdgeInsets.only(right: 10.0), child: Text(sc.hour, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0)))
                                  ],
                                ),


                                new Divider(height: 15.0,color: Colors.grey)

                              ],
                            ),
                          ),

                  )
                  ,
                ]
            ),
          );
        },

      ),
    );
  }
}


