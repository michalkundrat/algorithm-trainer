import 'package:flutter/material.dart';

import 'package:algorithm_trainer/main.dart';
import 'package:algorithm_trainer/timer.dart';

class App2LookAlgorithmsPLL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Algorithm Trainer: 2-Look PLL"),
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
                "Step 1: Solve the corner pieces",
                style: TextStyle(fontSize: 19.0),
              ),
              Divider(height: 12.0, color: Colors.black54,),
              Card(
                  child: Row(
                    children: [
                      Image(image: AssetImage("assets/2-Look/PLL/Diagonal_Corner_Swap.png")),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Diagonal Corner Swap",
                            style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.grey[690],
                            ),
                          ),
                          SizedBox(height: 4.5,),
                          Text("F R U' R' U' R U R' F' R U R' U'\nR' F R F'", style: TextStyle(fontSize: 14.0),),
                        ],
                      )
                    ],
                  )
              ),
              Card(
                  child: Row(
                    children: [
                      Image(image: AssetImage("assets/2-Look/PLL/Adjacent_Corner_Swap.png")),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Adjacent Corner Swap",
                            style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.grey[690],
                            ),
                          ),
                          SizedBox(height: 4.5,),
                          Text("R U R' U' R' F R2 U' R' U' R U R' F'"),
                        ],
                      )
                    ],
                  )
              ),
              Divider(height: 20.0, color: Colors.black54,),
              Text(
                "Step 2: Solve the edge pieces",
                style: TextStyle(fontSize: 19.0),
              ),
              Divider(height: 12.0, color: Colors.black54,),
              Card(
                  child: Row(
                    children: [
                      Image(image: AssetImage("assets/2-Look/PLL/H_Perm.png")),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("H Permutation",
                            style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.grey[690],
                            ),
                          ),
                          SizedBox(height: 4.5,),
                          Text("M2 U M2 U2 M2 U M2"),
                        ],
                      )
                    ],
                  )
              ),
              Card(
                  child: Row(
                    children: [
                      Image(image: AssetImage("assets/2-Look/PLL/Ua_Perm.png")),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ua Permutation",
                            style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.grey[690],
                            ),
                          ),
                          SizedBox(height: 4.5,),
                          Text("R U' R U R U R U' R' U' R2"),
                        ],
                      )
                    ],
                  )
              ),
              Card(
                  child: Row(
                    children: [
                      Image(image: AssetImage("assets/2-Look/PLL/Ub_Perm.png")),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ub Permutation",
                            style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.grey[690],
                            ),
                          ),
                          SizedBox(height: 4.5,),
                          Text("R2 U R U R' U' R' U' R' U R'"),
                        ],
                      )
                    ],
                  )
              ),
              Card(
                  child: Row(
                    children: [
                      Image(image: AssetImage("assets/2-Look/PLL/Z_Perm.png")),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Z Permutation",
                            style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.grey[690],
                            ),
                          ),
                          SizedBox(height: 4.5,),
                          Text("M' U M2 U M2 U M' U2 M2"),
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