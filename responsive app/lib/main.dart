import 'package:flutter/material.dart';
import 'package:mini_papara/pages/Anasayfa.dart';
import 'package:mini_papara/pages/Odemeler.dart';
import 'package:mini_papara/pages/PaparaCard.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  static const List<Widget> _pageList = <Widget>[
    Home(),
    Odemeler(),
    PaparaCard(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: _pageList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("resimler/home_o.png")),
            activeIcon: ImageIcon(AssetImage("resimler/home_f.png")),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("resimler/payment_o.png")),
            activeIcon: ImageIcon(AssetImage("resimler/payment_f.png")),
            label: 'Ödemeler',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("resimler/card_o.png")),
            activeIcon: ImageIcon(AssetImage("resimler/card_f.png")),
            label: 'Papara Card',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        elevation: 0,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedFontSize: 12,
        selectedFontSize: 12,
      ),
    );
  }
}
