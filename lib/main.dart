import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(home: AppHomePage()));

class AppHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Algorithm Trainer"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 15.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/2-Look/OLL/antisune.png")),
                      Text("OLL Algorithms"),
                      SizedBox(height: 7.0,),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/2-Look/PLL/Adjacent_Corner_Swap.png")),
                      Text("PLL Algorithms"),
                      SizedBox(height: 7.0,),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 25.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new App2LookAlgorithms()),
                  );
                },
                child: Container(
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image(image: AssetImage("assets/2-Look/OLL/antisune.png")),
                          Image(image: AssetImage("assets/2-Look/PLL/H_Perm.png")),
                        ],
                      ),
                      Text("2-Look Algorithms"),
                      SizedBox(height: 7.0,),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class App2LookAlgorithms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Algorithm Trainer: 2-Look"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 15.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new App2LookAlgorithmsOLL()),
                  );
                },
                child: Container(
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/2-Look/OLL/line.png")),
                      Text("2-Look OLL"),
                      SizedBox(height: 7.0,),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new App2LookAlgorithmsPLL()),
                  );
                },
                child: Container(
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/2-Look/PLL/Z_Perm.png")),
                      Text("2-Look PLL"),
                      SizedBox(height: 7.0,),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class App2LookAlgorithmsOLL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Algorithm Trainer: 2-Look OLL"),
          centerTitle: true,
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

class App2LookAlgorithmsPLL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Algorithm Trainer: 2-Look PLL"),
          centerTitle: true,
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
                          Text("F R U' R' U' R U R' F' R U R' U' R' F R F"),
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