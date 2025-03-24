import 'package:flutter/material.dart';
import 'package:learn_flutter/widgets/list_view_screen.dart';
import 'package:learn_flutter/widgets/second_screen.dart';

void main() {
  runApp(MaterialApp(home: NavigationApp()));
}

class NavigationApp extends StatefulWidget {
  const NavigationApp({super.key});

  @override
  State<NavigationApp> createState() => _NavigationAppState();
}

class _NavigationAppState extends State<NavigationApp> {
  int _selectedIndex = 0;

  final List<BottomNavigationBarItem> navItem = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    const BottomNavigationBarItem(
      icon: Icon(Icons.contact_page_rounded),
      label: "About",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: "Settings",
    ),
  ];

  final List<Widget> screens = const [
    ListViewScreen(),
    SecondScreeen(),
    Scaffold(body: Text("Work In Progress")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondScreeen()),
              );
            },
            child: Icon(Icons.shopping_cart, color: Colors.deepOrangeAccent),
          ),
        ],
        backgroundColor: Colors.blueAccent,
        centerTitle: false,
        title: Text("Widget Tutorial"),
      ),
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: navItem,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          // print(index);
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
