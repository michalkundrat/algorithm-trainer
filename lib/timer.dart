import 'dart:ffi';

import 'package:flutter/material.dart';

String formatTime(int milliseconds) {
  var secs = milliseconds ~/ 1000;
  var hours = (secs ~/ 3600).toString().padLeft(2, '0');
  var minutes = ((secs % 3600) ~/ 60).toString().padLeft(2, '0');
  var seconds = (secs % 60).toString().padLeft(2, '0');
  return "$hours:$minutes:$seconds";
}

class AppBasicTimer extends StatefulWidget {
  @override
  _AppBasicTimerState createState() => _AppBasicTimerState();
}
class _AppBasicTimerState extends State<AppBasicTimer> {

  bool timerPressed = false;
  late Stopwatch _stopwatch;

  @override
  void initState() {
    super.initState();
    _stopwatch = Stopwatch();
  }
  void handleStartStop() {
    if (_stopwatch.isRunning) {
      _stopwatch.stop();
    } else {
      _stopwatch.start();
    }
    setState(() {});    // re-render the page
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Algorithm Trainer: Timer")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                if (_stopwatch.isRunning) {
                  handleStartStop();
                  setState(() {
                    timerPressed = false;
                  });
                }
                },
              onLongPressStart: (details) {setState(() {timerPressed = true;});},
              onLongPressEnd: (details) {handleStartStop(); setState(() {timerPressed = false;});},
              child: timerPressed ? new Text(formatTime(_stopwatch.elapsedMilliseconds), style: TextStyle(fontSize: 48.0, color: Colors.red)) : new Text(formatTime(_stopwatch.elapsedMilliseconds), style: TextStyle(fontSize: 48.0, color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}