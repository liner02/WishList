import 'package:flutter/material.dart';
import '../widgets/center_widget.dart';
import '../widgets/left_widget.dart';
import '../widgets/right_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomeState();
}

class HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
        appBar: null,
        body: PageView.builder(
//          controller: PageController(initialPage: 1),
          itemBuilder: (BuildContext context, int index) {
          var widget ;
            switch (index) {
              case 0:
                widget = LeftWidget();
                break;
              case 1:
                widget = CenterWidget();
                break;
              case 2:
                widget = RightWidget();
                break;
            }
            if(widget!=null){
              return widget;
            }
          },
          itemCount: 3,
        ));
    return scaffold;
  }
}
