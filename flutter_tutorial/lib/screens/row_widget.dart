import 'package:flutter/material.dart';


class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('A widget that displays its children in a horizontal array.'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text('To cause a child to expand to fill the available horizontal space, wrap the child in an Expanded widget.')
            ),
            Expanded(
              child: Text(
                'The Row widget does not scroll. If you have a line of widgets and want them to be able to scroll if there is insufficient room, consider using a ListView.'
              )
            ),
            Expanded(
              child: RaisedButton(
                child: Text('Button'),
                onPressed: () { print('Do nothing.'); },
              )
            )
          ],
        )
      ),
      
    );
  }
}