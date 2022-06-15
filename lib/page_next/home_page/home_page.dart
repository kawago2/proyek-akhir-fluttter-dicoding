import 'package:flutter/material.dart';
import 'package:proyek_akhir/constant.dart';
import '../profile_page/profile_page.dart';
import '../order_page/order_page.dart';
import 'first_page.dart';
import 'package:flutter/cupertino.dart';

class CupertinoHomepage extends StatelessWidget {
  const CupertinoHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.08;
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
