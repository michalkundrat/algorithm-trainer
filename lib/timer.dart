import 'dart:ffi';
import 'dart:io';

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
  bool readyToGo = false;
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
    setState(() {});
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
              onLongPressStart: (details) {setState(() {
                timerPressed = true;
                sleep(Duration(seconds:1));
                readyToGo = true;
              });},
              onLongPressEnd: (details) {if (readyToGo) {handleStartStop(); setState(() {timerPressed = false; readyToGo = false;});}},
              child: changeColor()
            ),

              //timerPressed ? new Text(formatTime(_stopwatch.elapsedMilliseconds), style: TextStyle(fontSize: 48.0, color: Colors.red)) : new Text(formatTime(_stopwatch.elapsedMilliseconds), style: TextStyle(fontSize: 48.0, color: Colors.black)),
            ElevatedButton(
                onPressed: () {
                  _stopwatch.reset();
                },
                child: Text("Reset"))
          ],
        ),
      ),
    );
  }
  Widget changeColor() {
    if (timerPressed && readyToGo) {
      return Text(formatTime(_stopwatch.elapsedMilliseconds), style: TextStyle(fontSize: 48.0, color: Colors.green));
    } else if (timerPressed && !readyToGo) {
      return Text(formatTime(_stopwatch.elapsedMilliseconds), style: TextStyle(fontSize: 48.0, color: Colors.red));
    } else {
      return Text(formatTime(_stopwatch.elapsedMilliseconds), style: TextStyle(fontSize: 48.0, color: Colors.black));
    }
  }
}