import 'package:flutter/material.dart';
import 'FirstScreen.dart';
import 'SecondScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //TODO Short Navigator Code
      routes: {
        '/first': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Navigations'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //TODO Text
            Text(
              'Home Page',
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
                  //TODO Navigator
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => FirstScreen()));
                  //TODO Access Short Navigator Code
                  Navigator.pushNamed(context, '/first');
                },
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.green,
                textColor: Colors.white,
                child: Text(
                  'First Screen',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            //TODO Button 2
            Padding(
              padding: EdgeInsets.all(10.0),
              child: FlatButton(
                onPressed: () {
                  //TODO Navigator
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => SecondScreen()));
                  //TODO Access Short Navigator Code
                  Navigator.pushNamed(context, '/second');
                },
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.red,
                textColor: Colors.white,
                child: Text(
                  'Second Screen',
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
