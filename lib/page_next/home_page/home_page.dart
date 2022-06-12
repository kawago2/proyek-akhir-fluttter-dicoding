import 'package:flutter/material.dart';
import 'package:proyek_akhir/constant.dart';
import '../profile_page/profile_page.dart';
import '../order_page/order_page.dart';
import 'first_page.dart';
import 'package:flutter/cupertino.dart';

class CupertinoHomepage extends StatefulWidget {
  const CupertinoHomepage({Key? key}) : super(key: key);

  @override
  State<CupertinoHomepage> createState() => _CupertinoHomepageState();
}

class _CupertinoHomepageState extends State<CupertinoHomepage> {
  @override
  Widget build(BuildContext context) {
    final double height =
        MediaQuery.of(context).size.height * 0.08;

    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
       
        height: height,
        backgroundColor: mainColor,
        activeColor: secColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: FirstPage(),
              );
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: SecPage(),
              );
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: ThreePage(),
              );
            });
          default:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: FirstPage(),
              );
            });
        }
      },
    );
  }
}

/*
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

int _selectedIndex = 0;
List<Widget> _pages = <Widget>[
  FirstPage(),
  SecPage(),
  ThreePage(),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _pages.elementAt(_selectedIndex), //New
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 16,
          selectedIconTheme: IconThemeData(
            color: secColor,
            size: 35,
          ),
          selectedItemColor: secColor,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: mainColor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Order',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
*/