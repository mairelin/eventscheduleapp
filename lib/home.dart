import 'package:opensaturday/home_body.dart';
import 'package:opensaturday/home_schedule.dart';
import 'package:flutter/material.dart';
import 'package:opensaturday/services/schedulefactory.dart';
import 'package:opensaturday/services/scheduleservice.dart';
import 'schedule_list.dart';
import 'package:url_launcher/url_launcher.dart';

class ScheduleTab extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _ScheduleTab();

}

class _ScheduleTab extends State<ScheduleTab> {

  Map days;
  ScheduleService srv = ScheduleFactory();
  List<Tab> tabs = List();
  List<ScheduleList> schedule = List();

  var _bottomTabSeleted = 0;
  List<BottomNavigationBarItem> _btbItems = [
    new BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
    new BottomNavigationBarItem(icon: Icon(Icons.schedule), title: Text('Agenda')),
    new BottomNavigationBarItem(icon: Icon(Icons.map), title: Text('Mapa')),
  ];

  List<Widget> _homeTabs = [
    HomeBody(),
    HomeSchedule(),
    new Center(
      child: new Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.map),
          Text('Mapa')
        ],
      ),
    ),

  ];

  @override
  void initState() {
    days = srv.getScheduleList();
    days.forEach((k, v) => tabs.add(Tab(text: k, icon: Icon(Icons.schedule),)));
    days.forEach((k, v) => schedule.add(ScheduleList(schedule: v)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: new Drawer(
              child: new ListView(
                children: <Widget> [
                  Padding(padding: EdgeInsets.only(top: 20.0), child: Image.asset("images/logo.png")),
                  new ListTile(
                    subtitle: new Text(""
                        "Es un evento realizado todo un sábado o fin de semana, donde buscamos "
                        "promover tecnologías FOSS que sean de utilidad a los profesionales "
                        "y estudiantes de diversas carreras. Este evento se organiza varias "
                        "veces al año en nuestro país, en diferentes provincias, con una "
                        "asistencia de más de 550 jóvenes en nuestro mas reciente versión, "
                        "y con más de 20 oradores nacionales e internacionales."
                        "En los 3 años que el evento lleva realizandose, se ha posicionado "
                        "como el evento tecnológico y comunitario de mayor asistencia en la República Dominicana.",
                      textAlign: TextAlign.justify,),
                    onTap: () {},
                  ),
                   ListTile(
                    title: new Text('Para mas  información visitanos en nuestra pagina web o nuestro Facebook'),
                    onTap: () {},
                  ),
                  InkWell(
                      child: Padding(padding: EdgeInsets.only(left: 20.0), child: Text("https://opensaturday.org",
                        style: TextStyle(color: Colors.blue, decorationStyle: TextDecorationStyle.solid),)) ,
                      onTap: () => _launchURL("https://opensaturday.org"))
                  ,
                ],
              )
          ),
        body: _homeTabs[_bottomTabSeleted],
        bottomNavigationBar: new BottomNavigationBar(
            items: _btbItems,
          fixedColor: Colors.blue,
          currentIndex: _bottomTabSeleted,
          onTap: (index){
              setState(() {
                this._bottomTabSeleted = index;
              });
          },
        ),

//      home: new DefaultTabController(
//        length: tabs.length == 0 ? 0 : tabs.length,
//        child: Scaffold(
//          backgroundColor: Colors.black87,
//          appBar: new PreferredSize(
//              child: Padding(padding: EdgeInsets.only(top: 20.0), child: Image.asset("images/logo.png")),
//              preferredSize: const Size.fromHeight(100.0),
//
//          ),
//
//          drawer: new Drawer(
//              child: new ListView(
//                children: <Widget> [
//                  Padding(padding: EdgeInsets.only(top: 20.0), child: Image.asset("images/logo.png")),
//                  new ListTile(
//                    subtitle: new Text(""
//                        "Es un evento realizado todo un sábado o fin de semana, donde buscamos "
//                        "promover tecnologías FOSS que sean de utilidad a los profesionales "
//                        "y estudiantes de diversas carreras. Este evento se organiza varias "
//                        "veces al año en nuestro país, en diferentes provincias, con una "
//                        "asistencia de más de 550 jóvenes en nuestro mas reciente versión, "
//                        "y con más de 20 oradores nacionales e internacionales."
//                        "En los 3 años que el evento lleva realizandose, se ha posicionado "
//                        "como el evento tecnológico y comunitario de mayor asistencia en la República Dominicana.",
//                      textAlign: TextAlign.justify,),
//                    onTap: () {},
//                  ),
//                   ListTile(
//                    title: new Text('Para mas  información visitanos en nuestra pagina web o nuestro Facebook'),
//                    onTap: () {},
//                  ),
//                  InkWell(
//                      child: Padding(padding: EdgeInsets.only(left: 20.0), child: Text("https://opensaturday.org",
//                        style: TextStyle(color: Colors.blue, decorationStyle: TextDecorationStyle.solid),)) ,
//                      onTap: () => _launchURL("https://opensaturday.org"))
//                  ,
//                ],
//              )
//          ),
//          body: TabBarView(
//            children: schedule
//          ),
//          bottomNavigationBar: TabBar(tabs: tabs),
//
//        ),
//      ),
    );
  }

  _launchURL(String link) async {
    if(link != null) {
      if (await canLaunch(link)) {
        await launch(link);
      } else {
        throw 'Could not launch $link';
      }
    }
  }


}
