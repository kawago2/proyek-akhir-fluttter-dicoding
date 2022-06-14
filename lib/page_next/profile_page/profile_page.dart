import 'package:flutter/material.dart';
import 'package:proyek_akhir/constant.dart';
import 'package:proyek_akhir/page_awal/login_page.dart';

class ThreePage extends StatelessWidget {
  const ThreePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        automaticallyImplyLeading: false,
        backgroundColor: mainColor,
        title: Container(
          decoration: BoxDecoration(
            color: quadColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 10),
              const CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 35,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://i.pinimg.com/474x/7b/76/41/7b76416fc0d92cba9c5c43568ba5aab6.jpg',
                  ),
                  backgroundColor: Colors.transparent,
                  radius: 30,
                ),
              ),
              const SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.star_border,
                        color: mainColor,
                      ),
                      Text(
                        ' Username',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          color: mainColor,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.money,
                        color: mainColor,
                      ),
                      Text(
                        ' Rp. 99.999 -',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          color: mainColor,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListBodyProfile(text: 'Privacy', onTap: () {}),
            const Divider(height: 1, thickness: 1),
            ListBodyProfile(text: 'History', onTap: () {}),
            const Divider(height: 1, thickness: 1),
            ListBodyProfile(text: 'Shopping List', onTap: () {}),
            const Divider(height: 1, thickness: 1),
            ListBodyProfile(text: 'Voucer', onTap: () {}),
            const Divider(height: 1, thickness: 1),
            ListBodyProfile(text: 'Whistlist', onTap: () {}),
            const Divider(height: 1, thickness: 1),
            ListBodyProfile(text: 'About Us', onTap: () {}),
            const Divider(height: 1, thickness: 1),
            ListBodyProfile(
              text: 'Logout',
              onTap: () {
                Navigator.of(context, rootNavigator: true).pushReplacement(
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
            ),
            const Divider(height: 1, thickness: 1),
            const SizedBox(height: 60),
            ListBodyProfile(text: 'kawago lop anya', onTap: () {}),
          ],
        ),
      ),
    );
  }
}

class ListBodyProfile extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const ListBodyProfile({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }
}
