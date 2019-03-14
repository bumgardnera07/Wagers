import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shot_bets/Bet.dart';
import 'package:shot_bets/BetsListGroupView.dart';

class BetsList extends StatelessWidget {
  final List<Bet> bets;

  BetsList({Key key, @required this.bets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: TabBar(tabs: [
              FlatButton.icon(
                  onPressed: null,
                  icon: Icon(Icons.group),
                  label: Text('All group bets')),
              FlatButton.icon(
                  onPressed: null,
                  icon: Icon(Icons.person),
                  label: Text("I'm involved in")),
            ]),
          ),

          body: TabBarView(children: [
            BetsListGroupView(
              bets: bets,
            ),
            BetsListGroupView(
              bets: bets.where((e) => e.title.endsWith("1")).toList(),
            ),
          ]),
        ));
  }
}