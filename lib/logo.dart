import 'package:flutter/material.dart';


class LogoImg extends StatelessWidget implements PreferredSizeWidget  {

  @override
  Widget build(BuildContext context) {
    Image img = Image.asset("images/logo.jpeg");


    Padding padding = new Padding(
      padding: new EdgeInsets.all(8.0),
      child:  img,
    );

    return padding;
  }

  @override
  Size get preferredSize => null;


}