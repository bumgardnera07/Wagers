import 'package:flutter/material.dart';
import 'package:shot_bets/Bet.dart';

class BetDetailScreen extends StatelessWidget {
  final Bet bet;

  BetDetailScreen({Key key, @required this.bet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bet.title),
      ),
      body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(bet.description)
      ),
    );
  }
}