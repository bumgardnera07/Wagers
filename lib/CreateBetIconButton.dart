import 'package:flutter/material.dart';

class CreateBetIconButton extends StatelessWidget {

  CreateBetIconButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.add),
      tooltip: 'Add a new bet',
      onPressed: () {
        final snackBar = SnackBar(
          content: Text('Bet created!'),
          action: SnackBarAction(label: 'Undo', onPressed: () { print('undoing bet creation'); }),
        );

        Scaffold.of(context).showSnackBar(snackBar);
      },
    );
  }
}

