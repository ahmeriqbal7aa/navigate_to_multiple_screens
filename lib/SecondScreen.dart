import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Navigations'),
        //TODO To remove auto added "Back icon" (In AppBar) for navigation, see following line of code
        // automaticallyImplyLeading: false,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //TODO Text
            Text(
              'Second Page',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'Times New Roman',
              ),
            ),
            //TODO Button 1
            Padding(
              padding: EdgeInsets.all(10.0),
              child: FlatButton(
                onPressed: () {
                  //TODO Navigator Back to (main) Home Screen
                  Navigator.pop(context);
                },
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.blue,
                textColor: Colors.white,
                child: Text(
                  'Home Screen',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
