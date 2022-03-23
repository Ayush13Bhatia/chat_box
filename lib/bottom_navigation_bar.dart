import 'package:chat_box/chat_page.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final _pages = const [
    {
      'page': ChatPage(),
      'title': 'Categories',
    },
    {
      'page': ChatPage(),
      'title': 'Categories',
    },
    {
      'page': ChatPage(),
      'title': 'Categories',
    },
    {
      'page': ChatPage(),
      'title': 'Categories',
    },
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: _pages[_selectedPageIndex]['page'] as Widget?,
      bottomNavigationBar: BottomNavigationBar(
        // fixedColor: Colors.white,
        onTap: _selectPage,
        backgroundColor: Colors.blue,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,

        currentIndex: _selectedPageIndex,

        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
            ),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Admin",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "History",
          ),
        ],
      ),
    );
  }
}
