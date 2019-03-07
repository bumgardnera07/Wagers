import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shot_bets/Bet.dart';
import 'package:shot_bets/BetDetailScreen.dart';

class BetsList extends StatelessWidget {
  final List<Bet> bets;

  BetsList({Key key, @required this.bets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        title: Text(bets[index].title),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => BetDetailScreen(bet: bets[index])
            ),
          );
        },
      );
    });
  }
}