//navbar
import 'package:flutter/material.dart';
import 'package:ku_pasal/constant.dart';
import 'package:ku_pasal/screens/homepage.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

int _selectedIndex = 0;
List<Widget> _pages = <Widget>[
  MyWidget(),
  ScrollBar(),
  Icon(
    Icons.chat,
    size: 150,
  ),
  Icon(
    Icons.account_circle,
    size: 150,
  )
];

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //make a logo at first and then following it make a search bar
          backgroundColor: kPrimaryColor,
          leading: Text(
            "Ku-pasal",
            textAlign: TextAlign.justify,
          ),

          title: const TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8),
                fillColor: Colors.white,
                filled: true,
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                border: //make it round
                    OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                )),
          ),
        ),

        //index
        body: Center(child: _pages.elementAt(_selectedIndex)), //list of pages

        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          unselectedItemColor: Colors.grey[400],
          //index
          currentIndex: _selectedIndex,

          selectedItemColor: Colors.blue[800],
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ));
  }
}
