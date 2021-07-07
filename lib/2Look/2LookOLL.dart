import 'package:flutter/material.dart';

import 'package:algorithm_trainer/main.dart';
import 'package:algorithm_trainer/timer.dart';

class App2LookAlgorithmsOLL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Algorithm Trainer: 2-Look OLL"),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(child: Text("Navigation Menu")),
              ListTile(
                title: Text("OLL"),
              ),
              ListTile(
                title: Text("PLL"),
              ),
              ListTile(
                title: Text("2-Look Algorithms"),
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new App2LookAlgorithms()),
                  );
                },
              ),
              ListTile(
                title: Text("Timer"),
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new AppBasicTimer()),
                  );
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 5.0,),
              Text(
                "Step 1: Form the yellow cross",
                style: TextStyle(fontSize: 19.0),
              ),
              Divider(height: 12.0, color: Colors.black54,),
              Card(
                  child: Row(
                    children: [
                      Image(image: AssetImage("assets/2-Look/OLL/dot_case.png")),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dot Case",
                            style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.grey[690],
                            ),
                          ),
                          SizedBox(height: 4.5,),
                          Text("F R U R' U' F' f R U R' U' f'"),
                        ],
                      )
                    ],
                  )
              ),
              Card(
                  child: Row(
                    children: [
                      Image(image: AssetImage("assets/2-Look/OLL/L-shape.png")),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("L-Shape",
                            style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.grey[690],
                            ),
                          ),
                          SizedBox(height: 4.5,),
                          Text("f R U R' U' f'"),
                        ],
                      )
                    ],
                  )
              ),
              Card(
                  child: Row(
                    children: [
                      Image(image: AssetImage("assets/2-Look/OLL/line.png")),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Line",
                            style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.grey[690],
                            ),
                          ),
                          SizedBox(height: 4.5,),
                          Text("F R U R' U' F'"),
                        ],
                      )
                    ],
                  )
              ),
              Divider(height: 20.0, color: Colors.black54,),
              Text(
                "Step 2: Solve OLL",
                style: TextStyle(fontSize: 19.0),
              ),
              Divider(height: 12.0, color: Colors.black54,),
              Card(
                  child: Row(
                    children: [
                      Image(image: AssetImage("assets/2-Look/OLL/antisune.png")),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Antisune",
                            style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.grey[690],
                            ),
                          ),
                          SizedBox(height: 4.5,),
                          Text("R U2 R' U' R U' R'"),
                        ],
                      )
                    ],
                  )
              ),
              Card(
                  child: Row(
                    children: [
                      Image(image: AssetImage("assets/2-Look/OLL/H_case.png")),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("H Case",
                            style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.grey[690],
                            ),
                          ),
                          SizedBox(height: 4.5,),
                          Text("R U R' U R U' R' U R U2 R'"),
                        ],
                      )
                    ],
                  )
              ),
              Card(
                  child: Row(
                    children: [
                      Image(image: AssetImage("assets/2-Look/OLL/L_case.png")),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("L Case",
                            style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.grey[690],
                            ),
                          ),
                          SizedBox(height: 4.5,),
                          Text("F R' F' r U R U' r'"),
                        ],
                      )
                    ],
                  )
              ),
              Card(
                  child: Row(
                    children: [
                      Image(image: AssetImage("assets/2-Look/OLL/pi_case.png")),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pi",
                            style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.grey[690],
                            ),
                          ),
                          SizedBox(height: 4.5,),
                          Text("R U2 R2 U' R2 U' R2 U2 R"),
                        ],
                      )
                    ],
                  )
              ),
              Card(
                  child: Row(
                    children: [
                      Image(image: AssetImage("assets/2-Look/OLL/sune.png")),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Sune",
                            style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.grey[690],
                            ),
                          ),
                          SizedBox(height: 4.5,),
                          Text("R U R' U R U2 R'"),
                        ],
                      )
                    ],
                  )
              ),
              Card(
                  child: Row(
                    children: [
                      Image(image: AssetImage("assets/2-Look/OLL/T_case.png")),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("T Case",
                            style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.grey[690],
                            ),
                          ),
                          SizedBox(height: 4.5,),
                          Text("r U R' U' r' F R F'"),
                        ],
                      )
                    ],
                  )
              ),
              Card(
                  child: Row(
                    children: [
                      Image(image: AssetImage("assets/2-Look/OLL/U_case.png")),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("U Case",
                            style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.grey[690],
                            ),
                          ),
                          SizedBox(height: 4.5,),
                          Text("R2 D R' U2 R D' R' U2 R'"),
                        ],
                      )
                    ],
                  )
              ),
            ],
          ),
        )
    );
  }
}