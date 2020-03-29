import 'package:flutter/material.dart';


class TextWidget extends StatelessWidget {

  final String textString = 'The text widget displays a string of text with single style.'
  'The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints and overflow property.';

  final String textspanString = '\n\nUsing the Text.rich constructor, the Text widget can display a paragraph with differently styled TextSpans.';

  final String gestureDetectorString = 'To make Text react to touch events, wrap it in a GestureDetector widget with a GestureDetector.onTap handler.';

  final String richtextString =  '\n\nIt is similar to Text.rich(). Text displayed in a RichText widget must be explicitly styled. When picking which style to use, consider using DefaultTextStyle.of the current BuildContext to provide defaults.';

  @override
  Widget build(BuildContext context) {
    return Center (
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column (
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                textString,
                textDirection: TextDirection.ltr,
                overflow: TextOverflow.visible,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15
                ) 
              )
            ),
            Padding(
              padding: EdgeInsets.only(bottom:10, left:10, right:10),
              child: Text.rich(
                TextSpan(
                  text: textspanString,
                  children: <TextSpan>[
                    TextSpan(text: textspanString, style: TextStyle(fontStyle: FontStyle.italic)),
                    TextSpan(text: textspanString, style: TextStyle(fontWeight: FontWeight.bold)),
                  ]
                )
              )
            ),
            Padding (
              padding: EdgeInsets.all(10),
              child: GestureDetector(
                onTap: () { print('You just clicked me...');},
                onDoubleTap: () { print('You just double clicked me...');},
                onLongPress: () { print('You just long pressed me...');},
                child: Text(
                  gestureDetectorString,
                  textDirection: TextDirection.ltr,
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  )
                ),
              )
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan> [
                    TextSpan(text: richtextString),
                    TextSpan(
                      text: richtextString, 
                      style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                  ]
                )
              ),
            )
          ],
          )
        ),
      )
    );
  }
}