import 'package:disney_ui/screens/downloads.dart';
import 'package:disney_ui/screens/home.dart';
import 'package:disney_ui/screens/profile.dart';
import 'package:disney_ui/screens/search.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentindex = 0;

  void currentpage(int index) {
    setState(() {
      currentindex = index;
    });
  }

  List pages = [Homepage(), Searchpage(), Downloadspage(), Profilepage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 1, 54),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: SizedBox(
          height: 56.0,
          child: Image.asset(
            'assets/disney.png',
            fit: BoxFit.contain,
            color: Colors.white,
          ),
        ),
        toolbarHeight: 56.0,
      ),
      body: pages[currentindex],
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            color: Colors.white12,
            height: 0.5,
            thickness: 0.5,
          ),
          BottomNavigationBar(
              onTap: currentpage,
              currentIndex: currentindex,
              elevation: 0,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white.withOpacity(0.5),
              backgroundColor: Colors.transparent,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: 'Search'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.download), label: 'Downloads'),
                BottomNavigationBarItem(
                    icon: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 16,
                      child: CircleAvatar(
                        foregroundImage: AssetImage('assets/face.png'),
                        radius: 15,
                      ),
                    ),
                    label: 'Profile'),
              ]),
        ],
      ),
    );
  }
}
