import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class HomeBody extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              backgroundColor: Colors.black,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("OpenSaturday",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Padding(
                    padding: const EdgeInsets.all(44.0),
                    child: Image.asset(
                      "images/logo.png",
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
          ];
        },
      body: Center(
        child: Text("Sample Text"),
      ),
    );
  }
}