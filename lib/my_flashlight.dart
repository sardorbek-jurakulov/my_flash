import "package:flutter/material.dart";

class MyFlashlight extends StatefulWidget {
  const MyFlashlight({Key? key}) : super(key: key);

  @override
  State<MyFlashlight> createState() => _MyFlashlightState();
}

class _MyFlashlightState extends State<MyFlashlight> {
  bool isFlashlightTurnOn = false;
  String usingImage = "assets/images/flashlight_off.jpg";
  IconData flashlightSwitcher = Icons.flashlight_on;
  String flashlightStatusMessage = "Flashlight is off";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Color(0xFF000000),
        //   title: Text(
        //     flashlightStatusMessage,
        //     style: TextStyle(
        //       color: Color(0xFFFFFFFF),
        //       fontFamily: "Pacifico",
        //       fontSize: 24,
        //     ),
        //   ),
        //   centerTitle: true,
        // ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color(0xFF000000),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(
              //   margin: EdgeInsets.only(
              //     top: 80,
              //     bottom: 30,
              //   ),
              //   child: Text(
              //     flashlightStatusMessage,
              //     style: TextStyle(
              //       color: Color(0xFFFFFFFF),
              //       fontFamily: "Pacifico",
              //       fontSize: 24,
              //     ),
              //   ),
              // ),
              Image.asset(usingImage),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFFFFFFFF),
          onPressed: () {
            setState(() {
              if (isFlashlightTurnOn == false) {
                isFlashlightTurnOn = true;
                flashlightSwitcher = Icons.flashlight_off;
                flashlightStatusMessage = "Flashlight is on";
                usingImage = "assets/images/flashlight_on.jpg";
              } else if (isFlashlightTurnOn == true) {
                isFlashlightTurnOn = false;
                flashlightSwitcher = Icons.flashlight_on;
                flashlightStatusMessage = "Flashlight is off";
                usingImage = "assets/images/flashlight_off.jpg";
              }
            });
          },
          child: Icon(flashlightSwitcher, color: Color(0xFF444444)),
        ),
      ),
    );
  }
}
