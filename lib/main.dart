import 'package:flutter/material.dart';
import 'package:flutter_final/grid_layout.dart';
import 'package:flutter_final/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';
  // final MyGridView myGridView = MyGridView();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // value set to false
  final bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CheckboxListTile(
            value: _value,
            onChanged: (value) {
              // setState(() {
              //   _value = value;
              // });
            },
            title: Text("Win the game with a flashlight"),
            contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10
            ),
          ), CheckboxListTile(
            value: _value,
            onChanged: (value) {
              // setState(() {
              //   _value = value;
              // });
            },
            title: Text("escape 3 consecutive times"),
            contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10
            ),
          ), CheckboxListTile(
            value: _value,
            onChanged: (value) {
              // setState(() {
              //   _value = value;
              // });
            },
            title: Text("Catch 3 survivors in bear-traps"),
            contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10
            ),
          ), CheckboxListTile(
            value: _value,
            onChanged: (value) {
              // setState(() {
              //   _value = value;
              // });
            },
            title: Text("Win 3 consecutive games as killer"),
            contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10
            ),
          ), CheckboxListTile(
            value: _value,
            onChanged: (value) {
              // setState(() {
              //   _value = value;
              // });
            },
            title: Text("Escape through the hatch 3 times"),
            contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10
            ),
          ), CheckboxListTile(
            value: _value,
            onChanged: (value) {
              // setState(() {
              //   _value = value;
              // });
            },
            title: Text("Use a key to escape"),
            contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10
            ),
          ), CheckboxListTile(
            value: _value,
            onChanged: (value) {
              // setState(() {
              //   _value = value;
              // });
            },
            title: Text("Win a game as killer under 3 minutes"),
            contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10
            ),
          ), CheckboxListTile(
            value: _value,
            onChanged: (value) {
              // setState(() {
              //   _value = value;
              // });
            },
            title: Text("Vault 10 windows in one game"),
            contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10
            ),
          ),
          CheckboxListTile(
            value: _value,
            onChanged: (value) {
              // setState(() {
              //   _value = value;
              // });
            },
            title: Text("Drop 10 pallets in one game"),
            contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10
            ),
          ),
          // CheckboxListTile(
          //   value: _value,
          //   onChanged: (value) {
          //     // setState(() {
          //     //   _value = value;
          //     // });
          //   },
          //   title: Text("Get 2 flashlight saves in one game"),
          //   contentPadding: EdgeInsets.symmetric(
          //       horizontal: 20,
          //       vertical: 10
          //   ),
          // ),
          // CheckboxListTile(
          //   value: _value,
          //   onChanged: (value) {
          //     // setState(() {
          //     //   _value = value;
          //     // });
          //   },
          //   title: Text("Stun the killer twice in one game"),
          //   contentPadding: EdgeInsets.symmetric(
          //       horizontal: 20,
          //       vertical: 10
          //   ),
          // ),
        ],
      ),
    );
  }
}

class RandomizerHome extends StatelessWidget {
  const RandomizerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Center(
            child: Container(
                child: TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.focused))
                            return Colors.red;
                          return null; // Defer to the widget's default.
                        }
                    ),
                  ),
                  onPressed: () { },
                  child: Text('Randomize My Build'),
                )
            )
        )
    );
  }
}

class AchievementHome extends StatelessWidget {
  const AchievementHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('Survivor Achievements', /* val here */ 25, Color.fromRGBO(108, 204, 211, 1.0)),
      ChartData('Killer Achievements', /* /* val here */ */ 10, Color.fromRGBO(199, 41, 41, 1.0)),
      ChartData('Not Achieved', /* /* val here */ */ 40, Color.fromRGBO(
          231, 222, 222, 1.0)),
    ];
    // Text(
    //   "Hi",
    //   textAlign: TextAlign.center,
    //   textScaleFactor: 4.0,
    // );
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Achievement Progress"),
        ),
        body: Center(
            child: Container(
                child: SfCircularChart(
                  //backgroundColor: Colors.black38,
                    series: <CircularSeries>[
                      // Renders doughnut chart
                      DoughnutSeries<ChartData, String>(
                          dataSource: chartData,
                          pointColorMapper:(ChartData data,  _) => data.color,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y
                      )
                    ]
                )
            )

        )
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    RandomizerHome(),
    Home(),
    AchievementHome(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dead by Daylight Companion'),
        backgroundColor: Colors.black38,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.change_circle),
            label: 'Randomizer',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.diamond_sharp),
            backgroundColor: Colors.blue,
            label: 'Achievements',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red[800],
        //backgroundColor: Colors.grey[600],
        onTap: _onItemTapped,
      ),
      //backgroundColor: Colors.grey[200],
    );
  }
}


