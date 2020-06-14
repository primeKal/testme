import 'package:flutter/material.dart';
class NewsFeed extends StatefulWidget {
  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions=[
    Container(color: Colors.blue,),
    Container(color: Colors.red,),

  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Rooms"),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[900],
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('News'),
            backgroundColor: Colors.white,
            icon: ImageIcon(
                AssetImage('icons/home.png'),
                color: Colors.blue),
          ),
          BottomNavigationBarItem(

              title: Text('Feeds'),
              backgroundColor: Colors.white,
              icon: ImageIcon(
                  AssetImage('icons/unicorn.png'),
                  color: Colors.blue)
          ),

        ],

      ),
    );
  }
}
