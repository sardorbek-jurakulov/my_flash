import "package:flutter/material.dart";
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

class MyFlashlight extends StatefulWidget {
  const MyFlashlight({Key? key}) : super(key: key);

  @override
  State<MyFlashlight> createState() => _MyFlashlightState();
}

class _MyFlashlightState extends State<MyFlashlight> {
  bool isFlashlightTurnOn = false;
  String usingImage = "assets/images/flashlight_off.jpg";
  // String flashlightOn = "assets/images/flashlight_on.jpg";
  // String flashlightOff = "assets/images/flashlight_off.jpg";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   title: Text(
        //     "My Flashlight",
        //     style: TextStyle(color: Color(0xFF444444)),
        //   ),
        //   centerTitle: true,
        // ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color(0xFF000000),
          child: Center(
            child: Image.asset(usingImage),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFFFFFFFF),
          onPressed: () {
            setState(() {
              if (isFlashlightTurnOn == false) {
                isFlashlightTurnOn = true;
                usingImage = "assets/images/flashlight_on.jpg";
              } else if (isFlashlightTurnOn == true) {
                isFlashlightTurnOn = false;
                usingImage = "assets/images/flashlight_off.jpg";
              }
            });
          },
          child: Icon(Icons.light, color: Color(0xFF444444)),
        ),
      ),
    );
  }
}
