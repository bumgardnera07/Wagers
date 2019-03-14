import 'package:flutter/material.dart';
import 'package:shot_bets/Bet.dart';
import 'package:shot_bets/BetDetailScreen.dart';

class BetsListGroupView extends StatelessWidget {
  final List<Bet> bets;

  BetsListGroupView({Key key, @required this.bets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: bets.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(bets[index].title + " for " + bets[index].stakes.toString() + " shots"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BetDetailScreen(bet: bets[index])),
              );
            },
          );
        });
  }
}