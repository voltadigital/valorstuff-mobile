import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

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
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Shop00',
      style:
          TextStyle(fontFamily: 'NotoSans', color: Colors.black, fontSize: 35),
    ),
    Text(
      'Matches01',
      style:
          TextStyle(fontFamily: 'NotoSans', color: Colors.black, fontSize: 35),
    ),
    Text(
      'Account02',
      style:
          TextStyle(fontFamily: 'NotoSans', color: Colors.black, fontSize: 35),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'ValorStuff',
          style: TextStyle(
              fontFamily: 'Koulen',
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.local_mall),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.clear_all),
            label: 'Matches',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
        backgroundColor: Colors.red,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
