import 'package:flutter/material.dart';
import 'package:proyek_akhir/constant.dart';
import 'image_list.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'list_page/list_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80, // Set this height
          automaticallyImplyLeading: false,
          backgroundColor: mainColor,
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              color: secColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search for something',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 16 / 7,
                  viewportFraction: 1.05,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: imagesList
                    .map(
                      (item) => Padding(
                        padding: const EdgeInsets.all(10),
                        child: Card(
                          elevation: 6.0,
                          shadowColor: mainColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Stack(
                              children: <Widget>[
                                Image.network(
                                  item,
                                  fit: BoxFit.cover,
                                  height: double.infinity,
                                  width: double.infinity,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KategoriWidget(
                    text: 'Medical',
                    press: () {},
                    subtext: '',
                  ),
                  KategoriWidget(
                    text: 'Food',
                    press: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ListPage()));
                    },
                    subtext: '',
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KategoriWidget(
                    text: 'Toy',
                    press: () {},
                    subtext: '',
                  ),
                  KategoriWidget(
                    text: 'Others',
                    press: () {},
                    subtext: '',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KategoriWidget extends StatelessWidget {
  final String text;
  final String subtext;
  final GestureTapCallback press;
  const KategoriWidget({
    Key? key,
    required this.text,
    required this.subtext,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double categoryHeight =
        MediaQuery.of(context).size.height * 0.4 - 150;
    final double categoryWidth = MediaQuery.of(context).size.width * 0.6 - 75;
    return GestureDetector(
      onTap: press,
      child: Container(
        width: categoryWidth,
        margin: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        height: categoryHeight,
        decoration: BoxDecoration(
            color: secColor, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                text,
                style: TextStyle(
                  fontSize: 25,
                  color: mainColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                subtext,
                style: TextStyle(
                  fontSize: 16,
                  color: mainColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
