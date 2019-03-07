import 'package:flutter/material.dart';
import 'package:shot_bets/Bet.dart';
import 'package:shot_bets/CreateBetIconButton.dart';
import 'package:shot_bets/BetsList.dart';

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final _widgetOptions = [
    Text('Index 0: Home'),
    BetsList(bets: List.generate(20, (i) => Bet('bet $i', 'description for bet $i', new DateTime.now(), "initiator $i",
        'target $i'))),
    Text('Index 2: Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shot Bets!'),
        actions: <Widget>[
          new CreateBetIconButton(),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar:
      BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.local_drink), title: Text("Bets")),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("Settings")),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) =>
            setState(() {
              _selectedIndex = index;
            }),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}