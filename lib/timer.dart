import 'dart:ffi';
import 'dart:io';
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String ms_string = "000";

String formatTime(int milliseconds) {
  ms_string = milliseconds.toString().substring(1);
  var secs = milliseconds ~/ 1000;
  var hours = (secs ~/ 3600).toString().padLeft(2, '0');
  var minutes = ((secs % 3600) ~/ 60).toString().padLeft(2, '0');
  var seconds = (secs % 60).toString().padLeft(2, '0');
  return "$minutes:$seconds.$ms_string";
}

class AppBasicTimer extends StatefulWidget {
  @override
  _AppBasicTimerState createState() => _AppBasicTimerState();
}

class _AppBasicTimerState extends State<AppBasicTimer> {
  bool timerPressed = false;
  bool readyToGo = false;
  late Stopwatch _stopwatch;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _stopwatch = Stopwatch();
    _timer = new Timer.periodic(new Duration(milliseconds: 30), (timer) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
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
                onLongPressStart: (details) async {
                  setState(() {
                    timerPressed = true;
                  });

                  await Future.delayed(Duration(seconds: 1));

                  setState(() {
                    readyToGo = true;
                  });
                },
                onLongPressEnd: (details) {
                  if (readyToGo) {
                    handleStartStop();
                    setState(() {
                      timerPressed = false;
                      readyToGo = false;
                    });
                  } else {
                    setState(() {
                      timerPressed = false;
                      readyToGo = false;
                    });
                  }
                },
                child: Container(
                      child: changeColor()
                  ),
            ),

            //timerPressed ? new Text(formatTime(_stopwatch.elapsedMilliseconds), style: TextStyle(fontSize: 48.0, color: Colors.red)) : new Text(formatTime(_stopwatch.elapsedMilliseconds), style: TextStyle(fontSize: 48.0, color: Colors.black)),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _stopwatch.reset();
                  });
                },
                child: Text("Reset"))
          ],
        ),
      ),
    );
  }

  Widget changeColor() {
      if (timerPressed && readyToGo) {
        return Text(formatTime(_stopwatch.elapsedMilliseconds),
            style: TextStyle(fontSize: 48.0, color: Colors.green));
      } else if (timerPressed && !readyToGo) {
        return Text(formatTime(_stopwatch.elapsedMilliseconds),
            style: TextStyle(fontSize: 48.0, color: Colors.red));
      } else {
        return Text(formatTime(_stopwatch.elapsedMilliseconds),
            style: TextStyle(fontSize: 48.0, color: Colors.black));
      }
  }
}
