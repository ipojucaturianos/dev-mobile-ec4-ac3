import 'package:flutter/material.dart';
import 'package:ac3/about_us.dart';
import 'package:ac3/image.dart';
import 'package:ac3/game.dart';

void main() {
  runApp(
    MaterialApp(
      home: const MyApp(),
      debugShowCheckedModeBanner: false,
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static Widget app = Center(
    child: Text('AC3 Desenvolvimento Mobile', style: TextStyle(fontSize: 25),),
  );
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        setState(() {
          app = Center(
            child: Text('AC3 Desenvolvimento Mobile', style: TextStyle(fontSize: 25),),
          );
        });
      } else {
        if (index == 1) {
          setState(() {
            app = ImagePage();
          });
        } else {
          if (index == 2) {
            setState(() {
              app = GamePage();
            });
          } else {
            setState(() {
              app = AboutUs();
            });
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AC3 Dev Mobile', style: TextStyle(fontSize: 30)),
      ),
      body: app,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Image',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.games),
            label: 'Game',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About us',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
