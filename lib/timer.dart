import 'dart:ffi';
import 'dart:io';
import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

late Random random = new Random();

String lastScramble = "";

String ms_string = "000";
var possibleMoves4x4 = [
  "R",
  "R'",
  "R2",
  "L",
  "L'",
  "L2",
  "U",
  "U'",
  "U2",
  "D",
  "D'",
  "D2",
  "F",
  "F'",
  "F2",
  "B",
  "B'",
  "B2",
  "Fw",
  "Bw",
  "Rw",
  "Lw",
  "Dw",
  "Uw",
  "f",
  "b",
  "u",
  "d",
  "r",
  "l"
];
var possibleMoves3x3 = [
  "R",
  "R'",
  "R2",
  "L",
  "L'",
  "L2",
  "U",
  "U'",
  "U2",
  "D",
  "D'",
  "D2",
  "F",
  "F'",
  "F2",
  "B",
  "B'",
  "B2"
];
var possibleMoves2x2 = [
  "R",
  "R'",
  "R2",
  "L",
  "L'",
  "L2",
  "U",
  "U'",
  "U2",
  "D",
  "D'",
  "D2",
  "F",
  "F'",
  "F2",
  "B",
  "B'",
  "B2"
];
var possibleMovesPyraminx = [
  "R",
  "R'",
  "R2",
  "L",
  "L'",
  "L2",
  "U",
  "U'",
  "U2",
  "B",
  "B'",
  "B2",
  "l",
  "l'",
  "r",
  "r'",
  "u",
  "u'",
  "b",
  "b'"
];
var scrambleToDo = "3x3";
bool readyToScramble = true;

Widget handleScrambleMaking() {
  if (scrambleToDo == "4x4") {
    readyToScramble = false;
    return Text(generateScramble4x4());
  } else if (scrambleToDo == "3x3") {
    readyToScramble = false;
    return Text(generateScramble3x3());
  } else if (scrambleToDo == "2x2") {
    readyToScramble = false;
    return Text(generateScramble2x2());
  } else if (scrambleToDo == "Pyraminx") {
    readyToScramble = false;
    return Text(generateScramblePyraminx());
  } else {
    return Text("Sorry, could not generate a scramble!");
  }
}

String generateScramble4x4() {
  var lengthOfScramble = random.nextInt(7) + 18;
  var scrambleAsList = [];
  for (int iteration = 0; iteration <= lengthOfScramble; iteration++) {
    var index = random.nextInt(possibleMoves4x4.length);
    scrambleAsList.add(possibleMoves4x4[index]);
  }
  String scramble = scrambleAsList.join(" ");
  lastScramble = scramble;
  return scramble;
}

String generateScramble3x3() {
  var lengthOfScramble = random.nextInt(7) + 18;
  var scrambleAsList = [];
  for (int iteration = 0; iteration <= lengthOfScramble; iteration++) {
    var index = random.nextInt(possibleMoves3x3.length);
    scrambleAsList.add(possibleMoves3x3[index]);
  }
  String scramble = scrambleAsList.join(" ");
  lastScramble = scramble;
  return scramble;
}

String generateScramble2x2() {
  var lengthOfScramble = random.nextInt(4) + 9;
  var scrambleAsList = [];
  for (int iteration = 0; iteration <= lengthOfScramble; iteration++) {
    var index = random.nextInt(possibleMoves3x3.length);
    scrambleAsList.add(possibleMoves2x2[index]);
  }
  String scramble = scrambleAsList.join(" ");
  lastScramble = scramble;
  return scramble;
}

String generateScramblePyraminx() {
  var lengthOfScramble = random.nextInt(4) + 9;
  var scrambleAsList = [];
  for (int iteration = 0; iteration <= lengthOfScramble; iteration++) {
    var index = random.nextInt(possibleMoves3x3.length);
    scrambleAsList.add(possibleMovesPyraminx[index]);
  }
  String scramble = scrambleAsList.join(" ");
  lastScramble = scramble;
  return scramble;
}

String formatTime(int milliseconds) {
  ms_string = milliseconds.toString().substring(1);
  var secs = milliseconds ~/ 1000;
  if (secs >= 10) {
    ms_string = ms_string.substring(1, 4);
  }
  if (secs >= 60) {
    ms_string = ms_string.substring(1, 4);
  }
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
      readyToScramble = true;
    } else {
      _stopwatch.start();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Algorithm Trainer: Timer")),
        body: GestureDetector(
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

              await Future.delayed(Duration(milliseconds: 800));

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
            behavior: HitTestBehavior.translucent,
            child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          DropdownButton(
                            onChanged: (String? newValue) {
                              setState(() {
                                scrambleToDo = newValue!;
                                handleScrambleMaking();
                              });
                            },
                            value: scrambleToDo,
                            items: <String>['2x2', '3x3', '4x4', 'Pyraminx']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                          readyToScramble
                              ? handleScrambleMaking()
                              : Text(
                                  lastScramble,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 22.5,
                                  ),
                                )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 155.0,
                    ),
                    Container(child: changeColor()),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _stopwatch.reset();
                          });
                        },
                        child: Text("Reset")),
                  ]
              ),
            )
        )
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
