import 'dart:ffi';

import 'package:flutter/material.dart';

class AppBasicTimer extends StatefulWidget {
  const AppBasicTimer({Key? key}) : super(key: key);

  @override
  _AppBasicTimerState createState() => _AppBasicTimerState();
}

String formatTime(int milliseconds) {
  var secs = milliseconds ~/ 1000;
  var hours = (secs ~/ 3600).toString().padLeft(2, '0');
  var minutes = ((secs % 3600) ~/ 60).toString().padLeft(2, '0');
  var seconds = (secs % 60).toString().padLeft(2, '0');
  return "$hours:$minutes:$seconds";
}

class _AppBasicTimerState extends State<AppBasicTimer> {

  late Stopwatch _stopwatch;

  void handleStartStop() {
    if (_stopwatch.isRunning) {
      _stopwatch.stop();
    } else {
      _stopwatch.start();
    }
    setState(() {});    // re-render the page
  }


  bool pressed = false;
  double time = 0.000000;
  double ao5 = 0.000;
  double ao12 = 0.000;

  @override
  void initState() {
    super.initState();
    _stopwatch = Stopwatch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Algorithm Trainer: Timer"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ao5: $ao5",
            style: TextStyle(
              fontFamily: "Open Sans",
              fontSize: 18.0,
            ),
          ),
          Text(
            "ao12: $ao12",
            style: TextStyle(
              fontFamily: "Open Sans",
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: 79.0,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: Text(
                    formatTime(_stopwatch.elapsedMilliseconds),
                    style: TextStyle(
                      fontSize: 48.0,
                      fontFamily: "Open Sans",
                    ),
                ),
                onTap: handleStartStop,
                /*
                onLongPressStart: (details) {
                  setState(() {
                    pressed = true;
                  });
                },
                  onLongPressEnd: (details) {
                  setState(() {
                    pressed = false;
                  });
                  },
                child: pressed
                    ? new Text(
                  "0.000",
                  style: TextStyle(
                    fontSize: 79.0,
                    fontFamily: "Open Sans",
                    color: Colors.green,
                  ),
                )
                    : new Text(
                  "$time",
                  style: TextStyle(
                    fontSize: 79.0,
                    fontFamily: "Open Sans",
                    color: Colors.black,
                  ),
                ) */
              )
            ],
          )
        ]
      ),
    );
  }
}
