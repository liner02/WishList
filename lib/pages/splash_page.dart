import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'dart:ui';
import 'home_page.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => SplashState();
}

class SplashState extends State<SplashPage> {

  void countDown() {
    var _duration = Duration(seconds: 3);
    Future.delayed(_duration, go2HomePage);
  }

  void go2HomePage() {
    Navigator.of(context).pushAndRemoveUntil(
         MaterialPageRoute(builder: (context) => HomePage()),
            (route) => route == null);
  }


  @override
  void initState() {
    countDown();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var bing = 'https://cn.bing.com/ImageResolution.aspx?w=${MediaQuery.of(context).size.width.toInt().toString()}&h=${MediaQuery.of(context).size.height.toInt().toString()}';

    return Scaffold(
      appBar: null,
      body: SizedBox(
        child: Stack(
          children: [
            Image.network(
              'https://cn.bing.com/ImageResolution.aspx?w=100&h=100',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fitHeight,
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
              child: Container(
                color: Colors.white.withOpacity(0.5),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  image: bing,
                  imageSemanticLabel: 'bing',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
