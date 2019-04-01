import 'package:flutter/material.dart';

class RightWidget extends StatefulWidget {
  @override
  State<RightWidget> createState() => RightWidgetState();
}

class RightWidgetState extends State<RightWidget> {
  @override
  Widget build(BuildContext context) {

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.deepOrange,
    );
  }
}
