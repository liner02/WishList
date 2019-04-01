import 'package:flutter/material.dart';

class LeftWidget extends StatefulWidget {
  @override
  State<LeftWidget> createState() => LeftWidgetState();
}

class LeftWidgetState extends State<LeftWidget> {
  @override
  Widget build(BuildContext context) {

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.red,
    );
  }
}
