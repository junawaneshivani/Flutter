import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/profile.jpg'),
            ),
            Text('Shivani Junawane',
              style: TextStyle(
                color: Colors.white, 
                fontFamily: 'Pacifico', 
                fontSize: 30
              ),
            ),
            Text('Senior Software Developer',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'SourceSansPro',
                fontSize: 20,
                letterSpacing: 2,
              )
            ),
            SizedBox(
              width: 200,
              child: Divider(
                height: 30, 
                color: Colors.teal.shade900,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical:10, horizontal:20),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal.shade900,
                  size: 30,
                ),
                title: Text('+91 9175005532',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'SourceSansPro',
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
                        Card(
              margin: EdgeInsets.symmetric(vertical:10, horizontal:20),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal.shade900,
                  size: 30,
                ),
                title: Text('junawaneshivani@gmail.com',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'SourceSansPro',
                    letterSpacing: 1,
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}