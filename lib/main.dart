import 'package:flutter/material.dart';
import 'package:flutter_googlebottomnav/account.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 1;
  final _widgetOptions = [
    TabPage1(),
    TabPage2(),
    TabPage3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), title: Text('Business')),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text('School')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.deepOrange,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}


// This is a sample tab page for Tab1
class TabPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new RaisedButton(
        child: const Text('Page 1 Button'),
        color: Theme.of(context).accentColor,
        elevation: 4.0,
        splashColor: Colors.blueGrey,
        onPressed: () {
          Navigator.push(
            context,
            // Take the user to Account Page
            MaterialPageRoute(builder: (context) => Account()),
          );
        },
      ),
    );
  }
}

// This is a sample tab page for Tab1
class TabPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new RaisedButton(
        child: const Text('Page 2 Button'),
        color: Theme.of(context).accentColor,
        elevation: 4.0,
        splashColor: Colors.blueGrey,
        onPressed: () {
          Navigator.push(
            context,
            // Take the user to Account Page
            MaterialPageRoute(builder: (context) => Account()),
          );
        },
      ),
    );
  }
}

// This is a sample tab page for Tab1
class TabPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new RaisedButton(
        child: const Text('Page 3 Button'),
        color: Theme.of(context).accentColor,
        elevation: 4.0,
        splashColor: Colors.blueGrey,
        onPressed: () {
          Navigator.push(
            context,
            // Take the user to Account Page
            MaterialPageRoute(builder: (context) => Account()),
          );
        },
      ),
    );
  }
}
