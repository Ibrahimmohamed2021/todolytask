import 'package:flutter/material.dart';
//toolbar
class SettingsBar extends StatefulWidget{
  const SettingsBar({Key? key}) : super(key: key);
  @override
  State<SettingsBar>  createState() => _ToolBar();
}
class _ToolBar extends State<SettingsBar> {

    int _selectedIndex = 0;
    void _onItemTapped(int index) {
      setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'red',
          backgroundColor: Colors.red,

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'blue',
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'purple',
          backgroundColor: Colors.purple,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'settings',
          // tooltip: 'Show Snackbar',
          // onPressed: () {
          //   ScaffoldMessenger.of(context).showSnackBar(
          //       const SnackBar(content: Text('This is a snackbar')));
          // },
          backgroundColor: Colors.pink,
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    )
    ;
  }
}