import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Bet {
  final String title;
  final String description;
  final DateTime date;
  final String initiator;
  final String target;

  Bet(this.title, this.description, this.date, this.initiator, this.target);
}

class BodyBets extends StatelessWidget {
  final List<Bet> bets;

  BodyBets({Key key, @required this.bets}) : super(key: key);

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