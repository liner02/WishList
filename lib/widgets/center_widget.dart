import 'package:flutter/material.dart';

class CenterWidget extends StatefulWidget {
  @override
  State<CenterWidget> createState() => CenterWidgetState();
}

class CenterWidgetState extends State<CenterWidget> {
  @override
  Widget build(BuildContext context) {

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.blue,
    );
  }
}
