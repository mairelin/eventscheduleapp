import 'package:flutter/material.dart';
import 'package:eventscheduleapp/domain/schedule.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ScheduleDetail extends StatefulWidget {

  Schedule selectedItem;

  ScheduleDetail({Key key, this.selectedItem}) : super(key: key);

  @override
  _ScheduleDetail createState() => _ScheduleDetail(this.selectedItem);

}

class _ScheduleDetail extends State<ScheduleDetail> {

  Schedule sc;

  _ScheduleDetail(this.sc);


  @override
  Widget build(BuildContext context) {
    return Scaffold (

      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(sc.speaker.name),
      ),

      body: Column(
        children: <Widget>[

          Padding(padding: EdgeInsets.all( 10.0 ),
              child: Container(
                decoration: new BoxDecoration(

                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(sc.speaker.photo))
                ),
                height: 200.0,
                width: 200.0,

              )),

          Padding(padding: EdgeInsets.all( 30.0 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                   InkWell(
                      child: Icon(FontAwesomeIcons.twitter),
                      onTap: () => _launchURL(sc.speaker.twitter))
                  ,
                   InkWell(
                      child: Icon(FontAwesomeIcons.facebook),
                      onTap: () => _launchURL(sc.speaker.facebook))
                  ,
                   InkWell(
                      child: Icon(FontAwesomeIcons.instagram),
                      onTap: () => _launchURL(sc.speaker.instagram))
                  ,
                   InkWell(
                      child: Icon(FontAwesomeIcons.pagelines),
                      onTap: () => _launchURL(sc.speaker.website))

                ],
              )),

          Padding(padding: EdgeInsets.all( 10.0 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  Expanded(child: Text(sc.talk.name, style: TextStyle( fontSize: 20.0, fontWeight:  FontWeight.bold),))
                ],
              )),

          Padding(padding: EdgeInsets.all( 10.0 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  Text("Horario", style: TextStyle(color: Colors.blueGrey, fontSize: 20.0, fontWeight:  FontWeight.bold),),
                Text(sc.hour, style: TextStyle( fontSize: 15.0),)
                ],
              )),


          Padding(padding: EdgeInsets.all( 10.0 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  Text("Lugar", style: TextStyle(color: Colors.blueGrey, fontSize: 20.0, fontWeight:  FontWeight.bold),),
                  Text(sc.area, style: TextStyle( fontSize: 15.0))
                ],
              )),

          Padding(padding: EdgeInsets.all( 10.0 ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  Text("Descripción", style: TextStyle(color: Colors.blueGrey, fontSize: 25.0, fontWeight:  FontWeight.bold),),
            Text(sc.talk.description == null ? "Sin descripción" : sc.talk.description, style: TextStyle( fontSize: 20.0),)
                ],
              )),
        ],
      ),
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

