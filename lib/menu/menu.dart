import 'package:flutter/material.dart';
import '../properties/add_properties.dart';

import '../main.dart';

class AppWrapper extends StatefulWidget {
  const AppWrapper({Key? key, required}) : super(key: key);

  @override
  _AppWrapperState createState() => _AppWrapperState();
}

class _AppWrapperState extends State<AppWrapper> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          // Replace these Placeholder widgets with your actual screens
          HomeScreen(),
          AddPropertyPage(),
          Placeholder(),
          Placeholder(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.home),
                color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
                onPressed: () => _onItemTapped(0),
              ),
              IconButton(
                icon: const Icon(Icons.search),
                color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
                onPressed: () => _onItemTapped(1),
              ),
              const SizedBox(width: 48.0),
              IconButton(
                icon: const Icon(Icons.notifications),
                color: _selectedIndex == 2 ? Colors.blue : Colors.grey,
                onPressed: () => _onItemTapped(2),
              ),
              IconButton(
                icon: const Icon(Icons.person),
                color: _selectedIndex == 3 ? Colors.blue : Colors.grey,
                onPressed: () => _onItemTapped(3),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add_properties');
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
